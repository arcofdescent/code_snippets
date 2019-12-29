
use HTML::Entities;

my $str = 'Test <test&@mail.com>';
print encode_entities($str) . "\n";

$str = '&amp; lala &lt;go.com&gt;';
print decode_entities($str) . "\n";

