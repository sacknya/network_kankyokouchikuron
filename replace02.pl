#!/usr/bin/env perl
use strict;
use warnings;

open my $fh, "<", "./fruits.txt";
while( my $line = <$fh> ) {
    $line =~ s/(\d+)/$1*1.08/e; # '\d' means number (0-9)
    print $line;
}
