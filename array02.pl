#!/usr/bin/env perl
use 5.10.0;
use strict;
use warnings;

my @numbers = (5, 8, 3, -5, 10, 3, 5);
for my $num(@numbers) {
	say $num;
}

say '-----------------------------';

for my $num(@numbers) {
	say $num * 10;
}
