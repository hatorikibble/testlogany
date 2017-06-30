package MyPath;

use strict;
use warnings;

use Log::Any ();
use Moo;

has log => (
    is => 'ro',
    default => sub { Log::Any->get_logger },
);
has name => ( is => 'rw');

sub BUILD{
  my $self = shift;
 $self->log->infof("Greetings from %s",$self->name);
}

1;
