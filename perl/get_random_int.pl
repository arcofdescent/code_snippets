
sub get_random_int
{
    my ( $min, $max ) = @_;

    return $min if $min == $max;
    ( $min, $max ) = ( $max, $min ) if $min > $max;
    return $min + int rand( 1 + $max - $min );
}

