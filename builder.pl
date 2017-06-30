#!/usr/bin/env plackup

use Plack::Builder;

builder {
    mount "/path1" => builder {
        Plack::Util::load_psgi('path1.psgi');
    };
    mount "/path2" => builder {
        Plack::Util::load_psgi('path2.psgi');
    };
};
