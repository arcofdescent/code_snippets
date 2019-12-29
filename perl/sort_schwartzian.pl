#!/usr/bin/perl
use strict; use warnings;

use Data::Dumper;

my @lines = (qw/
99996510~joe~CL~INDIA~21
99996511~tim~AL~USA~22
99996512~garry~GL~UK~24
99996513~foe~BL~USA~25
99996514~mike~QL~INDIA~26
99996515~jerry~FL~INDIA~27
99996516~tom~JL~UK~28
99996216~tom~JL~UK~28
99995516~tom~JL~UK~28
99991516~tom~JL~UK~28
99996596~tom~JL~UK~28
/);

print Dumper \@lines;

my @sorted = 
    map { $_->[0] }
    sort { $a->[1].$a->[2] cmp $b->[1].$b->[2] }
    map { [ $_, (split /~/, $_)[2], (split /~/, $_)[0] ] }
    @lines;

print Dumper \@sorted;

