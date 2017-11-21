#!/usr/bin/env perl
use strict;
use warnings;

open my $fh, "<", "./fruits.txt";
while( my $line = <$fh> ) {
    $line =~ s/\s+/---/; 
    print $line;
}
