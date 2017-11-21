#!/usr/bin/env perl
use 5.10.0;
use strict;
use warnings;

my %fruits = (
	'banana'	=>	200,
	'mango'		=>	400,
	'kiwi'		=>	80,
	'apple'		=>	100,
	'melon'		=>	880,
	'orange'	=>	120,
	'strawberry'	=>	480,
);

say $fruits{'banana'}; #'say' means 'print' + 'Return'
say $fruits{'kiwi'};
say $fruits{'melon'};

say %fruits; #It's difficult to read
say join(",", keys %fruits);
say join(":", values %fruits);
