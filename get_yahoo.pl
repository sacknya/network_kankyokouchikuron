#!/usr/bin/env perl
use strict;
use warnings;
use LWP::Simple;
use Encode;

my $url  = 'https://news.yahoo.co.jp';
my $html = get($url);

open my $fh, ">", './yahoo_news.html';
print $fh encode( 'utf8', $html );
