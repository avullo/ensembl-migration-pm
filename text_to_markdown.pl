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

# print "@wp_logs\n";
# print "@wp_milestones\n";

# test
# try to convert just one instance
my $file = "$log_dir/" . $wp_logs[0];
print $file, "\n";

open my $FH, "<$file" or die "Cannot open file $file: $!\n";
my $posts;
my ($date, $title);
while (my $line = <$FH>) {
  if ($line =~ /^\d{4}-\d\d-\d\d/) { # new daily report
    # strip last newline from previous post content
    $posts->{$date}{content} =~ s/\n$//;

    chomp $line;
    my @fields = split / /, $line;
    $date = shift @fields;
    $title = join(' ', @fields); 
    $posts->{$date}{title} = $title;
  } else {
    defined $date and exists $posts->{$date} or die "Error: trying to add content to non existant post.\n";
    $posts->{$date}{content} .= $line;
  }
} 
close $FH;
 
print Dumper $posts;


