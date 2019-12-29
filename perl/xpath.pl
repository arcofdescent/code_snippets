#!/usr/bin/perl
use strict; use warnings;

use XML::XPath;
use XML::XPath::XMLParser;
use Perl6::Say;
use Data::Dumper;


my $xml = <<EOD;
<total>
  <item>
    <hits>10</hits>
  </item>
  <item>
    <hits>5</hits>
  </item>
</total>
EOD

my $xp = XML::XPath->new(xml => $xml);
say $xp->{_xml};

# loop over multiple item tags
my @items = $xp->findnodes('//total/item');
foreach my $item (@items) {
    #print $item->getName . "\n";
    my $hits = $item->findvalue('hits');
    print "$hits\n";
}

# get a single value
my $hits = $xp->findvalue("//item/hits");
print "hits: $hits\n";

