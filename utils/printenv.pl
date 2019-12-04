#!/usr/bin/env perl

use strict;
use warnings;

print( ( ($ENV{BODY} =~ /Merry/) == 1)? $ENV{GREETING} : $ENV{HEY});


