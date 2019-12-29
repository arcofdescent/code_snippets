package Car;
use 5.010;
use strict; use warnings;

use Moose;
use Pump;

my %uids = (
    xxx => 'Vin',
    yyy => 'Bin',
    zzz => 'Din',
);

has uid => (
    is => 'ro',
);

has car_type => (
    is => 'ro',
    lazy_build => 1,
);

sub _build_car_type {
    my ($self) = @_;

    return $uids{$self->uid};
}

has chassis => (
    is => 'ro',
    isa => 'Str',
    default => 'x7867y634n',
);

sub BUILD {
    my ($self, $args) = @_;
    my $pump = Pump->new(uid =>$self->uid);

    my $meta = __PACKAGE__->meta;
    #$meta->make_mutable;

    $meta->add_attribute(
        'pump_type' => ( is => 'ro', ) );
    $self->{pump_type} = $pump->pump_type;
}

no Moose;
#__PACKAGE__->meta->make_immutable;

1;

