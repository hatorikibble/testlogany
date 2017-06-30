package MyPath;

use strict;
use warnings;

use Log::Any ();
use Moo;

has log => (
    is => 'ro',
     is => 'lazy', # run as late as possible and $self->{name} will exist
    default => sub { Log::Any->get_logger(category => shift->name); }
);
has name => ( is => 'rw');

sub BUILD{
  my $self = shift;
 $self->log->infof("Greetings from %s",$self->name);
}

1;
