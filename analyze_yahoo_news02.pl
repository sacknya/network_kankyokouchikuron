#!/usr/bin/env perl
use 5.10.0;
use strict;
use warnings;
use LWP::Simple;
use Encode;

my $url  = 'https://news.yahoo.co.jp';
my $html = get($url);

my $reg = qr[(<div class="subMod subRanking">\s+<div class="hd">.*?</div>.*?</div>)]s;
my ($ranking_div) = $html =~ $reg;

my @lines = split(/\n/, $ranking_div);
for my $line (@lines) {
    if( $line =~ m[<span class="rankNum">\d+</span>] ) {
        say encode('utf8', $line);
    }
    if( $line =~ m[<span class="ttl">.+</span>] ) {
        say encode('utf8', $line);
        say '-' x 60;
    }
}
