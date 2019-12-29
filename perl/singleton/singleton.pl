#!/usr/bin/perl
use strict; use warnings;

use Test::More qw/ no_plan /;
use Perl6::Say;

use Service_A;
use Service_B;

my $service1 = Service_A->new();
say "service1 isa " . ref $service1;
Service->email('user@domain.com');
$service1->do_work();

my $service2 = Service_B->new();
say "service2 isa " . ref $service2;
ok (Service->email eq 'user@domain.com', 'email');
$service2->do_work();

