#!/usr/bin/perl
use warnings;
use strict;
use v5.10;
use POE qw( Wheel::Run Filter::Line );

# Start a session where each event is handled by a function with the
# same name.  Run POE's Kernel (and thus all its sessions) until done.
POE::Session->create(
    inline_states   => {
        _start  => \&_start,
        got_child_stdout    => \&got_child_stdout,
        got_child_close     => \&got_child_close,
        got_sigchld         => \&got_sigchld,
        _stop   => \&_stop,
    }
);

# Start the session.  Spawn a simple program, and describe the events
# it will generate as it does things.
sub _start {
    my ($kernel, $session, $heap) = @_[KERNEL, SESSION, HEAP];
    say "Started session with ID ", $session->ID;

    for ( 1 .. 500 ) {
        my $task = POE::Wheel::Run->new(
            Program => ["./gen_table.pl", $_ ],    # Program to run.
            StdoutEvent  => "got_child_stdout",          # Child wrote to STDOUT.
            CloseEvent   => "got_child_close",           # Child stopped writing.
        );
        $heap->{task}->{$task->ID} = $task;
        say "Created child task with id ", $task->ID;
        $kernel->sig_child($task->PID, "got_sigchld");
    }
}

# Deal with information the child wrote to its STDOUT.
sub got_child_stdout {
    my $stdout = $_[ARG0];
    print "STDOUT: $stdout\n";
}

# The child has closed its output filehandles.  It will not be sending
# us any more information, so destroy it.
sub got_child_close {
    my $heap = $_[HEAP];
    print "child closed.\n";
    delete $heap->{task};
}

# Handle SIGCHLD, otherwise the child process will not be reaped.
# Don't do anything significant, but do catch the signal so the child
# process is reaped.
sub got_sigchld {
    #print "child reaped.\n";
}

sub _stop
{
    my ($kernel, $heap, $session) = @_[KERNEL, HEAP, SESSION]; 
    say "session ", $session->ID, " stopped";
}

POE::Kernel->run();
exit 0;

