#!/usr/bin/perl
use strict; use warnings;

use HTML::Template;

my $tmpl = HTML::Template->new(filename => 'sample_template.tmpl');

my @countries = (
    { code => 'IN', name => 'India', geoip => 1, },
    { code => 'US', name => 'USA', geoip => 1, },
);

$tmpl->param(countries => \@countries);
print $tmpl->output;


