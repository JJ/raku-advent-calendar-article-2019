#!/usr/bin/env perl6

use v6;
use Test;

constant $greeting = "Merry Xmas!";
constant $non-greeting = "Hey!";
is( greet( "Hey", $greeting, $non-greeting), $non-greeting, "Non-seasonal salutation OK");
is( greet( "Merry Xmas!", $greeting, $non-greeting), $greeting, "Seasonal salutation OK");
done-testing;

sub greet( $body, $greeting, $non-greeting ) {
    ($body ~~ /M|m "erry"/)??$greeting!!$non-greeting;
}
