#!/usr/bin/perl
use strict; use warnings;

# www_mech.pl
# -----------
#   This script demonstrates how to post a fake field during a form submission.
#   When using WWW::Mechanize->field(); we can't set a fake field here.

use WWW::Mechanize;
use Perl6::Say;

my $url = 'http://jupiter/dotproject/';
my $mech = WWW::Mechanize->new();

# Get google home page. The search form
$mech->get($url);
my ($form) = $mech->forms();
for ( $form->inputs() ) {
    say $_->type;
}


# set a false field
#my $request = HTTP::Request->new(GET => $url);
#$mech->request($request);
#print $mech->res->content;

#$mech->field('hahahahuhuhu', 'bull');

