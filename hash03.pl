#!/usr/bin/env perl
use 5.10.0;
use strict;
use warnings;

my %fruits = (
    'banana'      =>  200,
    'mango'       =>  400,
    'kiwi'        =>   80,
    'apple'       =>  100,
    'melon'       =>  880,
    'orange'      =>  120,
    'strawberry'  =>  480,
);

for my $key (keys %fruits) {
	say grep{ %fruits$_ >= 5} "$key is $fruits{$key} YEN";
	say "--------------------";
	if ($fruits{$key} >= 300){
		 say "$key is $fruits{$key} YEN";
	}
}