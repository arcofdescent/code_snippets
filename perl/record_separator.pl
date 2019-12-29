#!/usr/bin/perl
use strict; use warnings;

$/ = '}';
while (my $rec = <DATA>) {
    chomp $rec;
    print "--$rec--\n\n";
}

__DATA__
table_template(fall_val_table_cd) {
variable_1 : total_output_value ;
variable_2 : input_transition ;
("0.0, 200.0, 1000.0, 5000.0") ;
("29.453, 258.413, 490.876, 1429.816") ;
}
table2_template(fall_val_table_cd) {
variable_1 : total_output_value ;
variable_2 : input_transition ;
("0.0, 200.0, 1000.0, 5000.0") ;
("29.453, 258.413, 490.876, 1429.816") ;
}
