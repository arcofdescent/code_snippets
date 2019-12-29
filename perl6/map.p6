#!/usr/bin/env perl6

use v6;

my @names = <Rohan Sam Harry Elvis Iain>;
say @names.map({ $_ ~ ' length is ' ~ $_.chars }).join("\n");

