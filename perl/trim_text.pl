
use Data::Dumper;

my $text = q{About me! Stolen quotes from anonymous ppl. Everyone is entitled two be stupid, but some abuse the privilege. Never attribute to malice what can be adequately explained by one's stupidity. Is there intelligent life in that photo? Maybe, but not as we know it!};

my @words = split /\s/, $text;

print join ' ', @words[0..9];

