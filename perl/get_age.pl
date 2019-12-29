
use Date::Calc qw/ Today Delta_Days leap_year/;

my $dob = '1977-01-25';

my ($year1, $month1, $day1) = split /-/, $dob;
my ($year2, $month2, $day2) = Today();

if (($day1 == 29) && ($month1 == 2) && !leap_year($year2))
    { $day1--; }

my $diff = Delta_Days($year2,$month1,$day1, $year2,$month2,$day2);

print "DOB: $year1, $month1, $day1\n";
print "Today: $year2, $month2, $day2\n";

if ($diff >= 0) {
    print "Age: " . ($year2-$year1) . "\n";
}
else {
    print "Age: " . ($year2-$year1-1) . "\n";
}

