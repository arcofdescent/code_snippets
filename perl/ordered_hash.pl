#!/usr/bin/perl
use strict; use warnings;

use Tie::IxHash;
use Perl6::Say;

my %data;
tie %data, 'Tie::IxHash';

$data{91} = 'lala';
$data{2} = 'kaka';
$data{bbb} = 'zoso';

say %data;

my $data_ref;
tie %$data_ref, 'Tie::IxHash';

$data_ref->{99} = 'lklksd';
$data_ref->{2} = 'so';
$data_ref->{aaa} = 'askdlkasd';
say %$data_ref;

