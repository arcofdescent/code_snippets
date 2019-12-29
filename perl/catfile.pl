
use File::Spec::Functions qw(catfile rel2abs);

my $id = 'tmp/EI01.pdf';
print catfile('invoice', $id);

