#!/usr/bin/perl
use strict; use warnings;

use Test::Most;
use Test::MockModule;
use HTTP::Response;

use_ok('Mod');

my $module = Test::MockModule->new('LWP::UserAgent');

# create a respose object
my $res = HTTP::Response->new;
$res->code(200);
$res->is_success(1);
$res->content('DOCTYPE');

$module->mock( 'request' => $res );

my $m = Mod->new;
my $ret = $m->send_request;

ok ($ret =~ m{DOCTYPE}, 'request sent');

done_testing();

