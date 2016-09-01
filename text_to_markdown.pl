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

opendir(my $DH, $log_dir) || die "Can't open $log_dir: $!";
my @wp_logs = grep { /^wp.+?[^\~]$/ && -f "$log_dir/$_" } readdir($DH);
closedir $DH;

opendir($DH, $milestones_dir) || die "Can't open $milestones_dir: $!";
my @wp_milestones = grep { /^wp.+?[^\~]$/ && -f "$milestones_dir/$_" } readdir($DH);
closedir $DH;

foreach my $log_file (@wp_logs) {
  my $wp = (split /-/, $log_file)[0];
  
  # TEMP
  # skip if wp56/wp08, not yet converted
  next if $wp =~ /wp(056|08)/;

  # just do it, do not die, this is implemented wrongly either in Perl or in shell
  `mkdir -p "_$wp"`; # or die "Could create dir _$wp: $!\n";
  
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
 
  # print Dumper $posts;
  # print join("\n", sort keys %{$posts}), "\n";
  # foreach my $date (sort keys %{$posts}) {
  #   printf "%s - %s\n%s\n\n", $date, $posts->{$date}{title}, $posts->{$date}{content}
  # }
  #exit;

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
    open $PH, sprintf ">_%s/%s-%s.md", $wp, $date, $normalised_title or die "Cannot open $wp collection item md for date $date: $!\n";
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
