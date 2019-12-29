package Pump;
use 5.010;
use strict; use warnings;

use Moose;

my %data = (
    xxx  => 'Electron Pump',
    yyy  => 'Hydro',
    zzz  => 'Neutrino',
);

has uid => (
    is => 'ro',
);

has pump_type => (
    is => 'ro',
    lazy_build => 1,
);

sub _build_pump_type {
    my ($self) = @_;
    return $data{$self->uid};
}

no Moose;
__PACKAGE__->meta->make_immutable;

1;

