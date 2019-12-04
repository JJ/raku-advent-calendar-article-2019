#!/usr/bin/env perl

use strict;
use warnings;

my $output = ( ($ENV{BODY} =~ /Merry/) == 1)? $ENV{GREETING} : $ENV{HEY};
print "\'{ \"body\": \"$output\"}\"\'";

