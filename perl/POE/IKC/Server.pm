package Server;

use POE;
use POE::Component::IKC::Server;

sub ganda
{
    print "matahr!\n";

    POE::Component::IKC::Server->spawn(
        port    => 50666,
        name    => 'DemoServer',
    );

    POE::Session->create(
        inline_states   => {
            _start  => \&server_start,
            _stop   => sub { print "server stopped.\n"; },
            create_account => \&create_account,
        },
    );

    POE::Kernel->run();
}

sub server_start
{
    my ($kernel, $heap, $session) = @_[KERNEL, HEAP, SESSION];

    print "Inside server_start()\n";

    POE::Component::IKC::Server->spawn(
        port    => 50666,
        name    => 'DemoServer',
    );

    my $service_name = 'BotService';
    $kernel->alias_set($service_name);

    # publish the service
    $kernel->post(IKC => publish => $service_name, [qw(create_account)]);

}

sub create_account
{
    my ($kernel, $heap, $session, $arg0) 
        = @_[KERNEL, HEAP, SESSION, ARG0];

    print "Someonce called create_account()\n";
    print "first arg is $arg0\n";

}

1;

