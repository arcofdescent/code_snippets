#!/usr/bin/perl
use strict; use warnings;

use HTML::FillInForm;

my $html = qq{
    <form>
    <input type="text" name="email"/>
    <select name="country">
    <option value="in">India</option>
    <option value="gb">United Kingdom</option>
    </select>
    </form>
};

print "$html\n";

my $fif = HTML::FillInForm->new();
my $params = {
    email => 'rohan@hotmail.com',
    country => 'gb',
};
my $output = $fif->fill(scalarref => \$html, fdat => $params);
print "$output\n";


