#!/usr/bin/perl
use strict; use warnings;

use Template;
use Perl6::Say;

my $tt = Template->new(
    INCLUDE_PATH => '.', # Path to template files
    PRE_CHOMP => 0,
    POST_CHOMP => 0,
    PARSER => MyParser->new(),
    PRE_DEFINE => { lang => 'en' },
);

$tt->process('template_language.txt', { lang => 'en' });

package MyParser;
require 5.005;
use strict;
use base qw(Template::Parser);

use Perl6::Say;

use constant LANG_RE        => qr{<([a-z]{2})>(.*?)</\1>}s;
#######################
# constructor
sub new {
    my ($class, $options) = @_;
    my $self = $class->SUPER::new();
    $self->init($options);
    return $self;
}
#######################
sub init {
    my ($self, $options) = @_;
    $self->{$_} = $options->{$_} for keys %$options;
}

#######################
sub parse {
    my ($self, $text) = @_;
    # tokenize
    $self->_tokenize($text);
    # replace C<text> language sections with Template Toolkit
    # directives which will pick up the correct language text
    # at processing time.
    $text = '';
    for my $section (@{$self->{sections}}) {
        my $translated = $section->{text};
        $translated =~ s{@{[LANG_RE]}}
                        {\[% IF lang=='$1' %\]$2\[% END %\]}gs
            if $section->{lang};
        $text .= $translated;
    }
    
    my $doc = $self->SUPER::parse ($text);
    return $doc;
}
#######################
sub get_language_sections {
    return $_[0]->{sections};
}

#######################
sub _tokenize {
    my ($self, $text) = @_;
    return unless defined $text && length $text;
    # extract all sections from the text
    $self->{sections} = [];
    while ($text =~ s!
           ^(.*?)                # $1 - start of line up to start tag
            (?:
                <text                         # start of tag
                  (?:\s+id="?(\d+)"?)?        # $2 - optional id attribute
                >
                (.*?)                         # $3 - tag contents
                </text>                       # end of tag
            )
            !!sx) {
        push @{$self->{sections}}, { text => $1 } if $1;
        push @{$self->{sections}}, { lang => 1, id => $2||'', text => $3||'' }
            if defined $3;
    }
    push @{$self->{sections}}, { text => $text } if $text;
}
#######################
1;


