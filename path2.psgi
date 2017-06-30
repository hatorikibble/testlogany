#!/usr/bin/env perl

use MyPath;
use Log::Any::Adapter ( 'Fille', 'file' => 'file2.log',
                        'log_level' => 'debug', );

my $app = sub {
    my $env = shift;
    my $p = MyPath->new( name => "path2" );
    return [
           200,
           [ 'Content-Type' => 'text/html' ],
           [ sprintf(
                   "<html><head><title>%s</title></head><body>%s</body></html>",
                   $p->name(), $p->name()
             )
           ]
    ];
};
