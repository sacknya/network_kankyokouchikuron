#!/usr/bin/env perl
use 5.10.0;
use strict;
use warnings;

open my $fh, "<", "./fruits.txt";
while( my $line = <$fh> ) {
    my ($name, $price) = $line =~ m/(\w+)\s+(\d+)/;
    say "$name---$price";
}
