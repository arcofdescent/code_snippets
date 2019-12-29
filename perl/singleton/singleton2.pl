#!/usr/bin/perl
use strict; use warnings;

use Test::More qw/ no_plan /;
use Perl6::Say;

use Service;

my $service1 = Service->instance();
say "service1 isa " . ref $service1;
$service1->email('user@domain.com');

my $service2 = Service->instance();
say "service2 isa " . ref $service2;
ok ($service2->email eq 'user@domain.com', 'email');

