#!/usr/bin/env perl
use 5.10.0;
use strict;
use warnings;
use LWP::Simple;
use Encode;

my $url  = 'https://news.yahoo.co.jp';
my $html = get($url);
show_ranking( $html );

#------------------------------------------------------------
sub show_ranking {
	say "--------yahooニュースのランキング--------";
    my $html = shift || return;
    my $reg = qr[(<div class="subMod subRanking">\s+<div class="hd">.*?</div>.*?</div>)]s;
    my ($ranking_div) = $html =~ $reg;
    
    my @lines = split(/\n/, $ranking_div);
    for my $line (@lines) {
        if( my ($rank) = $line =~ m[<span class="rankNum">(\d+)</span>] ) {
            print encode('utf8', $rank);
            print "位 : ";
        }
        if( my ($title) = $line =~ m[<span class="ttl">(.+)</span>] ) {
            print encode('utf8', $title);
            print "\n";
        }
    }
}

