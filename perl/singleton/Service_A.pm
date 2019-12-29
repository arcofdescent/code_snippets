package Service_A;
use strict; use warnings;

use base qw/ Service /;

sub do_work
{
    my $self = shift;

    print "Doing work for Service A\n";
}

1;

