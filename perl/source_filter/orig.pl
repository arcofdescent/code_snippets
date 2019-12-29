#!/usr/bin/perl
use strict; use warnings;

use Config::General;

my $conf_file = '/path/to/config_file';

my %config;
eval {
    my $c = Config::General->new(
        -ConfigFile => $conf_file,
        -LowerCaseNames => 1,
        -AutoTrue => 1,
        -StrictVars => 1,
        #-InterPolateVars => 1,
    );
    %config = $c->getall();
};
if ($@) {
    die "Error parsing config file $conf_file";
}

