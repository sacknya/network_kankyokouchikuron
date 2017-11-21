#!/usr/bin/env perl
use 5.10.0;
use strict;
use warnings;
use LWP::Simple;
use Encode;
use Mojo::DOM;

my $url  = 'https://news.yahoo.co.jp';
my $html = get($url);
show_ranking( $html );

#------------------------------------------------------------
sub show_ranking {
    my $html       = shift || return;
    my $dom        = Mojo::DOM->new->parse($html);
    
    say "-------------アクセスランキング-------------";
    my $rank_div   = $dom->find('div.subRanking')->[0]; # いくつか見つかったものの先頭、たくさん見つかるかもしれないので。
    my $news_items = $rank_div->find('li');
    for my $news (@$news_items) { #day_referenceとよばれる。@に戻す
        my $rank  = $news->find('span.rankNum')->[0]->text;
        my $title = $news->find('span.ttl')->[0]->text;
        say encode('utf8', sprintf("%s: %s", "$rank", "$title"));
    }
    
    say "-------------雑誌アクセスランキング-------------";
    $rank_div   = $dom->find('div.subRanking.mv')->[0];
    $news_items = $rank_div->find('li');
    for my $news (@$news_items) { 
         my $rank  = $news->find('span.rankNum')->[0]->text;
         my $title = $news->find('span.ttl')->[0]->text;
        say encode('utf8', sprintf("%s: %s", "$rank", "$title"));
    }    
}
