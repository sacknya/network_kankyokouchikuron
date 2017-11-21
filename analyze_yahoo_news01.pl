#!/usr/bin/env perl
use strict;
use warnings;
use LWP::Simple;
use Encode;

my $url  = 'https://news.yahoo.co.jp';
my $html = get($url);

my $reg = qr[(<div class="subMod subRanking">\s+<div class="hd">.*?</div>.*?</div>)]s;
my ($ranking_div) = $html =~ $reg;

print encode('utf8', $ranking_div);
