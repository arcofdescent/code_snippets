package Proxy;
use strict;
use warnings;

use POE;
use Data::Dumper;

use Log::Log4perl qw/ get_logger /;

use Dispatch;

sub spawn
{
    my ( $class, $params_ref ) = @_;

    # The main parent session
    POE::Session->create(
        inline_states => {
            _start      => \&start,
            _stop       => \&stop,     
            got_data    => \&got_data,
        },
        #heap => $params_ref,
    );
}

sub start
{
    my ( $kernel, $heap, $session ) = @_[ KERNEL, HEAP, SESSION ];

    my $logger = get_logger();

    $logger->info("session ID: " . $session->ID);

    # spawn the dispatcher
    Dispatch->spawn({
        alias   =>  'my_dispatcher',    
    });

    $kernel->yield('got_data');

} # end sub server_start

sub got_data
{
    my ( $kernel, $heap, $session ) = @_[ KERNEL, HEAP, SESSION ];

    # send data to dispatcher
    $kernel->call('my_dispatcher', 'process_data', 'Hello SB');
    sleep 1;
    $kernel->call('my_dispatcher', 'process_data', 'To NS');
    sleep 1;
    $kernel->call('my_dispatcher', 'process_data', 'XFR me to a SB');
    sleep 1;
    $kernel->call('my_dispatcher', 'process_data', 'XFR me to a SB please');

}

sub stop
{
    my ( $kernel, $heap, $session ) = @_[ KERNEL, HEAP, SESSION ];

    my $logger = get_logger();

    $logger->info("session ID: " . $session->ID . " has stopped");

} # end sub server_start

1;

=pod

=head1 NAME
 
<Module::Name> - <One line description of module's purpose>
 
 
=head1 VERSION
 
This documentation refers to <Module::Name> version 0.0.1
 
 
=head1 SYNOPSIS
 
    use <Module::Name>;
    # Brief but working code example(s) here showing the most common usage(s)
  
  
=head1 DESCRIPTION
 
A full description of the module and its features.
 
 
=head1 SUBROUTINES/METHODS 
 
A separate section listing the public components of the module's interface. 
These normally consist of either subroutines that may be exported, or methods
that may be called on objects belonging to the classes that the module provides.
Name the section accordingly.
 
In an object-oriented module, this section should begin with a sentence of the 
form "An object of this class represents...", to give the reader a high-level
context to help them understand the methods that are subsequently described.
 
=head2 B<method_name()>

=head3 Description

=over 4

Brief description of the method.

=back

=head3 Usage

=over 4

my $ret = $obj->method_name(
    @params,
);

=back

=head3 Parameters

=over 4

1) param1 - param 1

=back

=head3 Returns
 
=over 4

$ret

=back


 
=head1 DIAGNOSTICS
 
A list of every error and warning message that the module can generate
(even the ones that will "never happen"), with a full explanation of each 
problem, one or more likely causes, and any suggested remedies.
 
 
=head1 CONFIGURATION AND ENVIRONMENT
 
A full explanation of any configuration system(s) used by the module,
including the names and locations of any configuration files, and the
meaning of any environment variables or properties that can be set. These
descriptions must also include details of any configuration language used.
 
 
=head1 DEPENDENCIES
 
A list of all the other modules that this module relies upon, including any
restrictions on versions, and an indication whether these required modules are
part of the standard Perl distribution, part of the module's distribution,
or must be installed separately.
 
 
=head1 INCOMPATIBILITIES
 
A list of any modules that this module cannot be used in conjunction with.
This may be due to name conflicts in the interface, or competition for 
system or program resources, or due to internal limitations of Perl 
(for example, many modules that use source code filters are mutually 
incompatible).
 
 
=head1 BUGS AND LIMITATIONS
 
There are no known bugs in this module. 
 
=head1 AUTHOR
 
<Author name(s)>  (<contact address>)
 
 
=head1 LICENCE AND COPYRIGHT
 
Copyright (c) <year> <copyright holder> (<contact address>). All rights
reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.


