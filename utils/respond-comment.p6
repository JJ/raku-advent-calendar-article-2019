#!/usr/bin/env perl6

use v6;
use Cro::HTTP::Client;

my $greeting = (%*ENV<BODY> ~~ /[Mm]erry/)??%*ENV<GREETING>!!%*ENV<HEY>;
my $url = "https://api.github.com/repos/JJ/raku-advent-calendar-article-2019/issues/%*ENV<ISSUE>/comments";
my %headers = Authorization => "token %*ENV<TOKEN>" ;
my %payload = body => $greeting;


my $client = Cro::HTTP::Client.new:
headers => [
             content-type => 'application/json',
             User-Agent => "JJ's Xmas Commenter",
             Authorization => "token %*ENV<TOKEN>"
];

my $resp = await $client.post: $url, body => %payload;
say $resp;
