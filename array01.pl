#!/usr/bin/env perl
use strict;
use warnings;

my @numbers = (5, 8, 3, -5, 10, 3, 5);
print $numbers[0], "\n";
print $numbers[1], "\n";
print $numbers[2], "\n";

print @numbers, "\n"; # It's difficult to read the result.
print join(" : ", @numbers), "\n";
print join(" | ", @numbers[2 .. 5]), "\n";

my @double_array = map{ $_ * 2 } @numbers;
print join(" : ", @double_array), "\n";

