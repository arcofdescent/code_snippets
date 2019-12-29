#!/usr/bin/perl
use strict; use warnings;

use Mod;

my $m = Mod->new;
my $ret = $m->send_request;

print $ret;

