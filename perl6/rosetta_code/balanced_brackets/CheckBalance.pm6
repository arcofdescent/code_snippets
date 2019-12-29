
use v6;
module CheckBalance;

sub check_balance(Str $b) is export returns Bool {

    my $num_opens = 0;

    for $b.comb -> $c {

        if $c eq '[' {
            $num_opens++;
        }

        if $c eq ']' {
            $num_opens--;
            if $num_opens < 0 {
                return False;
            }
        }
    }

    return $num_opens == 0;
}

