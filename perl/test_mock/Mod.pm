package Mod;
use strict; use warnings;

use LWP::UserAgent;

sub new {
    my ($class) = @_;

    my $self = {};
    my $ua = LWP::UserAgent->new;
    $ua->agent("MyApp/0.1 ");

    $self->{ua} = $ua;
    bless $self, $class;

    return $self;
}

sub send_request {
    my ($self) = @_;

    my $req = HTTP::Request->new( POST => 'http://search.cpan.org/search' );
    $req->content_type('application/x-www-form-urlencoded');
    $req->content('query=libwww-perl&mode=dist');

    # Pass request to the user agent and get a response back
    my $res = $self->{ua}->request($req);

    # Check the outcome of the response
    if ( $res->is_success ) {
        return $res->content;
    }
    else {
        die $res->status_line, "\n";
    }
}

1;

