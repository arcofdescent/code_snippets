#!/usr/bin/perl
use strict; use warnings;

use IPC::ShareLite;

my %function_maps = (
    create_account  => \&create_account,
);

$SIG{USR1} = \&got_signal;

my $ipc_key = '1977';

my $share = IPC::ShareLite->new(
    -key    => $ipc_key,
    -create => 'yes',
    -destroy    => 'yes',
);

my $pid = fork;
if ($pid) {
    # parent
}
else {
    exec "./server.pl $ipc_key";
}

while (1) {
    print "I'm doing my stuff...\n";
    sleep 2;
}

sub got_signal
{
    my $signame = shift;

    print "Got signal $signame\n";

    my $func = $share->fetch();
    $function_maps{$func}->();

}

sub create_account
{
    print "Inside create_account()\n";

}

