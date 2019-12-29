#!/usr/bin/perl
use strict; use warnings;

my %func_map = (
    get => \&get_stuff,
    put => \&put_stuff,
);

my $action = shift or die "specify action as argument";
if (not exists $func_map{$action}) {
    die "sub not found for action $action";
}
$func_map{$action}->();

sub get_stuff
{
    print "Inside get_stuff()\n";
}

sub put_stuff
{
    print "Inside put_stuff()\n";
}

