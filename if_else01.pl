#!/usr/bin/env perl
use strict;
use warnings;

my $score = 70;

if ($score => 60) {
	print "[OK]Your score is $score\n";
}
else {
	print "[NG]Your score is $score\n";
}

