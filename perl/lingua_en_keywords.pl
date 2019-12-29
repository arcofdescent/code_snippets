#!/usr/bin/perl
use strict; use warnings;

use Lingua::EN::NameParse;
use Data::Dumper;
use Perl6::Say;

#my $sentence = 'Rohan Almeida, Jason La Canfora, Spencer S. Hsu  and Harry Lambert';
my $sentence = 'Ernesto Londoño';

my @names = split /(, )|( and )/, $sentence;
print Dumper \@names;

my $name = Lingua::EN::NameParse->new;

for (@names) {
    if (defined $_) {
        my $error = $name->parse($_);
        if (not $error) {
            my %c = $name->components;
            #say Dumper \%c;
            say $c{given_name_1} . ' ' 
                . (($c{initials_1} ne q{}) ? $c{initials_1} . ' ' : q{}) 
                . $c{surname_1};
        }
    }
}

