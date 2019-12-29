
use Template;
use Data::Dumper;


my $tt = Template->new(
    INCLUDE_PATH => '.', # Path to template files
    PRE_CHOMP => 0,
    POST_CHOMP => 0,
);

my $mail_body =<<'EOD';
Beste Rudy,

Hierbij onze factuur en specificatie voor onze diensten geleverd in Maart
2009.

Ik kijk uit naar jullie feedback en betaling.

Met vriendelijke groeten,
Jeffrey Berend
Financial Manager Explore International nv.
0172 231037
EOD

$mail_body =~ s{\n}{\r\n}g;
#print Dumper $mail_body;

$tt_params->{mail_body} = $mail_body;
$tt->process('template.txt', $tt_params);

