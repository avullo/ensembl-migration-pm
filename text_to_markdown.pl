#!/usr/bin/env perl
#
# Convert various report files to markdown 
# suitable to be processed by Jekyll
#
use strict;
use warnings;

use Data::Dumper;

my $log_dir = 'logs';
my $milestones_dir = 'milestones';
my $DH;

# parse milestones for each WP and create the corresponding pages with md
opendir($DH, $milestones_dir) || die "Can't open $milestones_dir: $!";
my @wp_milestones = grep { /^wp.+?[^\~]$/ && -f "$milestones_dir/$_" } readdir($DH);
closedir $DH;

# make data directory to store status data for each WP
`mkdir -p _data`;

my $milestones;
my %months = 
  (
   '01' => 'January',
   '02' => 'February',
   '03' => 'March',
   '04' => 'April',
   '05' => 'May',
   '06' => 'June',
   '07' => 'July',
   '08' => 'August',
   '09' => 'September',
   '10' => 'October',
   '11' => 'November',
   '12' => 'December'
  );

unlink "_data/wp.yml";
my %wps = 
  (
   'wp012' => 'Archives',
   'wp03' => 'FTP',
   'wp04' => 'Public MySQL',
   'wp056' => 'Production (incl. genebuild)',
   'wp07' => 'Web',
   'wp08' => 'Outreach'
  );

foreach my $milestones_file (@wp_milestones) {
  my $wp = (split /-/, $milestones_file)[0];
  
  # just do it, do not die, this is implemented wrongly either in Perl or in shell
  `mkdir -p "_${wp}_milestones"`; # or die "Could create dir _$wp: $!\n";
  
  # parse log to get content organised by date
  my $file = "$milestones_dir/" . $milestones_file;
  open my $FH, "<$file" or die "Cannot open file $file: $!\n";
  my ($date, $log, $milestones);
  while (my $line = <$FH>) {
    if ($line =~ /^Objective:\s(.+?)$/i) {
      $milestones->{goal} = $1;
    } elsif ($line =~ /^State:\s(.+?)$/) {
      defined $1 or die "Couldn't get state for WP $wp";
      $milestones->{state} = $1;
    } elsif ($line =~ /^(\d{4}-\d\d-\d\d)/) { # new monthly report
      chomp $line;
      $date = $1;
      $log = 1;
    } else {
      $milestones->{log}{$date} .= $line
	if defined $date and $log;
    }
  } 
  close $FH;

  # generate a collection under each wp collection dir from each date content
  # `mkdir -p "_$wp/milestones"`;
  foreach my $date (sort keys %{$milestones->{log}}) {
    $date =~ /^\d{4}-(\d\d)-\d\d/;
    # title is alphanumeric month
    my $title = $months{$1};
    open my $MH, sprintf ">_%s_milestones/%s.md", $wp, $date  or die "Cannot open collection item for WP $wp and date $date: $!\n";
    print $MH <<CONTENT;
---
layout: post
wp: $wp
date: $date
title: $title
---

$milestones->{log}{$date}
CONTENT
    close $MH;
  }

  # add WP state, objective to wp data
  open my $DH, ">>_data/wp.yml" or die "Could not open data file: $!\n";
  print $DH sprintf "%s:\n  name: %s\n  goal: %s\n  state: %s\n\n", $wp, $wps{$wp}, $milestones->{goal}, $milestones->{state};
  close $DH;
}

# parse WP logs and create the corresponding blog posts and collection items
opendir($DH, $log_dir) || die "Can't open $log_dir: $!";
my @wp_logs = grep { /^wp.+?[^\~]$/ && -f "$log_dir/$_" } readdir($DH);
closedir $DH;

foreach my $log_file (@wp_logs) {
  my $wp = (split /-/, $log_file)[0];
  
  # parse log to get content organised by date
  my $file = "$log_dir/" . $log_file;
  open my $FH, "<$file" or die "Cannot open file $file: $!\n";
  my $posts;
  my ($date, $title);
  while (my $line = <$FH>) {
    if ($line =~ /^\d{4}-\d\d-\d\d/) { # new daily report
      # strip last newline from previous post content
      $posts->{$date}{content} =~ s/\n$// if $date;

      chomp $line;
      my @fields = split / /, $line;
      $date = shift @fields;
      $title = join(' ', @fields); 
      $posts->{$date}{title} = $title;
    } else {
      defined $date and exists $posts->{$date} or die "Error: trying to add content to non existant post (WP: $wp).\n";
      $posts->{$date}{content} .= $line;
    }
  } 
  close $FH;
 
  # generate posts from each date content
  foreach my $date (sort keys %{$posts}) {
    my $normalised_title = $posts->{$date}{title};
    $normalised_title =~ s/\//-/g;
    open my $PH, sprintf ">_posts/%s-%s.md", $date, $normalised_title or die "Cannot open post for date $date: $!\n";
    print $PH <<CONTENT;
---
layout: post
title: "$posts->{$date}{title}"
date: $date
---

$posts->{$date}{content}
CONTENT
    close $PH;

    # and now items in the wp log collection
    `mkdir -p "_${wp}_logs"`;
    open $PH, sprintf ">_%s_logs/%s-%s.md", $wp, $date, $normalised_title or die "Cannot open $wp collection item md for date $date: $!\n";
    print $PH <<CONTENT;
---
layout: post
title: "$posts->{$date}{title}"
date: $date
---

$posts->{$date}{content}
CONTENT
    close $PH;
  }  
}

