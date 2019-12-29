#!/usr/bin/perl
use strict; use warnings;

use CGI;
use CGI::Ajax;

sub evenodd_func {
               my $input = shift;

               # see if input is defined
               if ( not defined $input ) {
                 return("input not defined or NaN");
               }

               # see if value is a number (*thanks Randall!*)
               if ( $input !~ /\A\d+\z/ ) {
                 return("input is NaN");
               }

               # got a number, so mod by 2
               $input % 2 == 0 ? return("EVEN") : return("ODD");
}

sub Show_HTML {
               my $html = <<EOT;
             <HTML>
             <HEAD><title>CGI::Ajax Example</title>
             </HEAD>
             <BODY>
               Enter a number:&nbsp;
               <input type="text" name="somename" id="val1" size="6"
                  OnKeyUp="evenodd(['val1'], ['resultdiv']);">
               <br>
               <hr>
               <div id="resultdiv">
               </div>
             </BODY>
             </HTML>
EOT
               return $html;
}

my $cgi = new CGI();
my $pjx = new CGI::Ajax('evenodd' => \&evenodd_func );

print $pjx->build_html($cgi, \&Show_HTML);


