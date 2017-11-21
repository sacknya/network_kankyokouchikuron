#!/usr/bin/env perl
use 5.10.0;
use strict;
use warnings;
use File::Slurp; # 'read_file' can be used

# quick & simple
my $filename = "num_alpha.txt";
my $text = read_file( $filename );
say $text;

say '------------------------------';

# slow & flexible
open my $fh, "<", $filename;   # "<" means 'read file'
while (my $line = <$fh>) {
    print $line;
}
