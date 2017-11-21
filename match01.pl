#!/usr/bin/env perl
use 5.10.0;
use strict;
use warnings;

open my $fh, "<", "./fruits.txt";
while( my $line = <$fh> ) {
    if( $line =~ m/o/ ) {
        print $line;
    }
    if( $line =~ m/^o/ ) {
        print "***$line";
    }
}
