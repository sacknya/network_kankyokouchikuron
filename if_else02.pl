#!/usr/bin/env perl
use strict;
use warnings;

my $score = 100;

if ($score == 100) {
	print "*PERFECT*";
}

if ($score >= 80) {
	print "[Grade:A] Your score is $score\n";
}
elsif ($score >= 70) {
	print "[Grade:B] Your score is $score\n";
}
elsif ($score >= 60) {
	print "[Grade:C] Your score is $score\n";
}
else {
	print "[NG]Your score is $score\n";
}

