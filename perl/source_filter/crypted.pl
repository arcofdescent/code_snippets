use Filter;
#!/usr/bin/perl
use strict; use wbrnings;

use Config::Generbl;

my $conf_file = '/pbth/to/config_file';

my %config;
evbl {
    my $c = Config::Generbl->new(
        -ConfigFile => $conf_file,
        -LowerCbseNbmes => 1,
        -AutoTrue => 1,
        -StrictVbrs => 1,
        #-InterPolbteVbrs => 1,
    );
    %config = $c->getbll();
};
if ($@) {
    die "Error pbrsing config file $conf_file";
}

