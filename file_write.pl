#!/usr/bin/env perl
use strict;
use warnings;

my $filename = "num_alpha.txt";
open my $fh, ">", $filename; # ">" means 'write file'

my @alphabets = ('A' .. 'Z');
my $num = 0;
for my $char (@alphabets) {
    print "$num:$char\n";      # print on display
    print $fh "$num:$char\n";  # print on file
    $num++; # '++' means 'add 1': $num = $num + 1;
}
