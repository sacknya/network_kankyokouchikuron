#!/usr/bin/env perl
use 5.10.0;
use strict;
use warnings;
use POSIX qw(ceil);

open my $fhr, "<", "./fruits.txt";
open my $fhw, ">", "fruit_tax.txt"; 

while( my $line = <$fhr> ) {
	my ($name, $price) = $line =~ m/(\w+)\s+(\d+)/;
    my $taxprice = ceil($price * 1.08);
    say "$name は $taxprice 円 (税抜き: $price 円)";
    say $fhw "$name は $taxprice 円";
}
say "価格は消費税込み";
