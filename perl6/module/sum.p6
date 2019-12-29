#!/usr/bin/env perl6

use v6;
use lib '.';
use MyMath;

my @array = 4, 5, 7, 89, 12, 42;
say "Sum of @array.join(', ') is {sum(@array)}";

