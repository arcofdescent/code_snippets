#!/usr/bin/perl
use strict; use warnings;

use Net::SMTP;

my $s = Net::SMTP->new('sapphire3.adrenalin.my', Debug => 1);

$s->mail('rohan@a.com');
$s->to('rohan@easypeasymail.com');

my $msg =<<EOF;

Hi,

How are you doing?

Bye,
Rohan

EOF

$s->data();
$s->datasend('To: rohan@easypeasymail.com');
$s->datasend("\n");
$s->datasend($msg);
$s->dataend();

$s->quit;

