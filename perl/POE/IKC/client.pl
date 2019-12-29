#!/usr/bin/perl
use strict; use warnings;

use POE;
use POE::Component::IKC::Client;

POE::Component::IKC::Client->spawn(
    port    => 50666,
    name    => 'DemoClient',
    on_connect  => \&start_session,
);

sub start_session
{
    POE::Session->create(
        inline_states   => {
            _start  => \&client_start,
            _stop   => sub { print "client stopped.\n"; },
            subscribe => \&subscribe,
            botservice_subscribed => \&botservice_subscribed,
        },
    );
}

sub client_start
{
    my ($kernel, $heap, $session) = @_[KERNEL, HEAP, SESSION];

    $kernel->alias_set('IKCClient');
    print "Inside client_start()\n";

    $kernel->yield('subscribe');
}

sub subscribe
{
    my ($kernel, $heap, $session) = @_[KERNEL, HEAP, SESSION];

    # subscribe to remote session
    #$kernel->post(IKC => 
        #subscribe => [qw(poe://DemoServer/BotService)],
        #'botservice_subscribed');

    # post to remote session
    $kernel->post(IKC => 
        post => 'poe://DemoServer/BotService/create_account', 
            'arc_of_descent');

    # unsubscribe
    #$kernel->post(IKC => 
        #unsubscribe => 'poe://DemoServer/BotService');

    $kernel->post(IKC => 'shutdown');
}

sub botservice_subscribed
{

}

POE::Kernel->run();

