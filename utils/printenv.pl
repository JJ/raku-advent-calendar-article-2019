#!/usr/bin/env perl

use strict;
use warnings;

use v5.16;

my $output = ( ($ENV{BODY} =~ /Merry/) == 1)? $ENV{GREETING} : $ENV{HEY};
my $json =<<EOF;
'{ "body": "$output"}'
EOF

print $json;

