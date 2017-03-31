#!/usr/bin/perl
use v5.10;

$_ = "Hello there, neighbor";
if (/Hello\s([a-zA-Z]+)/) {    # capture the word between space and comma
  print "the word was $1\n";  # the word was there
}


$input_file = 'data.txt';
open( my $input_fh, "<", $input_file ) || die "Can't open $input_file: $!";

my @lines = <$input_fh>;
foreach $line (@lines) {
  if ($line =~ /Hello ([a-zA-Z]+)/) {
    say $1;
  }
}
