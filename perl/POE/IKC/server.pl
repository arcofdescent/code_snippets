#!/usr/bin/perl
use strict; use warnings;
$|++;

use IPC::ShareLite;
use POE;
use POE::Component::IKC::Server;

my $ipc_key = shift or die "ipc key required";

my $share = IPC::ShareLite->new(
    -key    => $ipc_key,
    -create => 'yes',
    -destroy    => 'yes',
);

POE::Component::IKC::Server->spawn(
    port    => 50666,
    name    => 'DemoServer',
);

POE::Session->create(
    inline_states   => {
        _start  => \&server_start,
        create_account => \&create_account,
    },
);

sub server_start
{
    my ($kernel, $heap, $session) = @_[KERNEL, HEAP, SESSION];

    my $service_name = 'BotService';
    $kernel->alias_set($service_name);

    # publish the service
    $kernel->post(IKC => publish => $service_name, [qw(create_account)]);

}

sub create_account
{
    my ($kernel, $heap, $session, $arg0) 
        = @_[KERNEL, HEAP, SESSION, ARG0];

    #print "Someonce called create_account()\n";
    #print "first arg is $arg0\n";

    $share->store('create_account');

    # send signal to parent process to read the shared memory
    my $ppid = getppid;
    kill 10, $ppid;
}

POE::Kernel->run();

