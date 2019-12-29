
module MyMath;

sub sum(@input) is export returns Int {
    return [+] @input;
}

