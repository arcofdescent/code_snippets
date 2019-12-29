#!/usr/bin/perl
use strict; use warnings;
use feature ":5.10";

use POSIX qw/ setuid /;

my ($name, $passwd, $uid) = getpwnam 'apache';
say $uid;
say setuid(48);
say $>;

