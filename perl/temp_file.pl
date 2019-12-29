
use File::Temp ();

my $temp_fh = File::Temp->new;
print $temp_fh->filename;

