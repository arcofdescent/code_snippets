#!/usr/bin/perl
use strict; use warnings;

use Text::Wrap;

$Text::Wrap::columns = 10;
my $line = 'Order Number is wrong';
my $ret = wrap('', '', $line);
print $ret;

