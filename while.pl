#!/usr/bin/env perl
use strict;
use warnings;

my @alphabets = ('apple','cirle','drink','rythm','fox','zoo');
for my $letter (@alphabets) {
    print "$letter";
    print "\n";
}
print "\n";

# ascending
@alphabets = ('apple','cirle','drink','rythm','fox','zoo');
while( my $letter = shift @alphabets ) {
    print "$letter";
    print "\n";
}
	print "\n";
	
# descending
@alphabets = ('apple','cirle','drink','rythm','fox','zoo');
while( my $letter = pop @alphabets ) {
    print "$letter";
        print "\n";
    }

