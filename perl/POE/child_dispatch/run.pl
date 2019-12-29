#!/usr/bin/perl
use strict;
use warnings;
$|++;

use Log::Log4perl;
use POE;
use Proxy;

my $log_config = <<'EOF';
log4perl.logger=DEBUG, A1
log4perl.appender.A1=Log::Dispatch::Screen
log4perl.appender.A1.mode=append
log4perl.appender.A1.layout=Log::Log4perl::Layout::PatternLayout
log4perl.appender.A1.layout.ConversionPattern=%d %p> %F{1}:%L %M - %m%n
EOF
Log::Log4perl->init(\$log_config);

Proxy->spawn();

POE::Kernel->run();

__END__

=pod

=head1 NAME
 
<application name> - <One line description of application's purpose>
 
 
=head1 VERSION
 
This documentation refers to <application name> version 0.0.1
 
 
=head1 USAGE
 
    # Brief working invocation example(s) here showing the most common usage(s)
 
 
 
=head1 REQUIRED ARGUMENTS
 
A complete list of every argument that must appear on the command line. 
when the application  is invoked, explaining what each of them does, any
restrictions on where each one may appear (i.e. flags that must appear 
before or after filenames), and how the various arguments and options 
may interact (e.g. mutual exclusions, required combinations, etc.)
 
If all of the application's arguments are optional this section
may be omitted entirely.
 

=head1 OPTIONS
 
A complete list of every available option with which the application 
can be invoked, explaining what each does, and listing any restrictions,
or interactions.
 
If the application has no options this section may be omitted entirely.
 
 
=head1 DESCRIPTION
 
A full description of the application and its features.
May include numerous subsections (i.e. =head2, =head3, etc.) 
 
 
=head1 DIAGNOSTICS
 
A list of every error and warning message that the application can generate
(even the ones that will "never happen"), with a full explanation of each 
problem, one or more likely causes, and any suggested remedies. If the
application generates exit status codes (e.g. under Unix) then list the exit
status associated with each error.
 
 
=head1 CONFIGURATION AND ENVIRONMENT
 
A full explanation of any configuration system(s) used by the application,
including the names and locations of any configuration files, and the
meaning of any environment variables or properties that can be set. These
descriptions must also include details of any configuration language used
  
