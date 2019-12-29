#!/usr/bin/perl
use strict; use warnings;

use Digest::MD5 qw/ md5 md5_hex md5_base64 /;
use Perl6::Say;

my $data = 'bob_pass';
say "md5: " . md5($data);
say "md5_hex: " . md5_hex($data);
say "md5_base64: " . md5_base64($data);

