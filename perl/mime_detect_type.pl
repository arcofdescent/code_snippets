
use MIME::Detect;

my $mime = MIME::Detect->new();
my $type = $mime->mime_type("/home/rohan/work/booknow/nov_3.txt");
print $type->mime_type;
print "----\n";

