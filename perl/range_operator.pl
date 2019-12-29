#!/usr/bin/perl
use strict; use warnings;

while (<DATA>) {
    print if (/<marker>/ .. /<\/marker>/);
}

__DATA__
In scalar context, ".." returns a boolean value. The operator is bistable,
like a flip-flop, and emulates the line-range (comma) operator of sed, awk,
and various editors. 
<marker>
Each ".." operator maintains its own boolean state. It is
false as long as its left operand is false. 
</marker>
Once the left operand is true, the
range operator stays true until the right operand is true, AFTER which the
range operator becomes false again.
