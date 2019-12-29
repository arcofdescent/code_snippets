package Service_B;
use strict; use warnings;

use base qw/ Service /;

sub do_work
{
    my $self = shift;

    print "Doing work for Service B\n";
}

1;

