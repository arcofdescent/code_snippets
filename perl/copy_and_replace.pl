#!/usr/bin/perl
use strict; use warnings;

my $orig_str = "A dog has four legs";
(my $replaced_str = $orig_str) =~ s/dog/cat/;

print "orig: $orig_str\n";
print "replaced: $replaced_str\n";

