#! /usr/bin/perl
eval 'exec /usr/bin/perl -S $0 ${1+"$@"}'
  if 0;
use strict;
use warnings;
use utf8;
use autodie;

our $VERSION = '0.01';

use Module::Build;

Module::Build->new(
    dist_name         => 'App-weather',
    dist_version_from => 'bin/weather',
    script_files      => 'bin/weather',
    requires          => { 'JSON' => 0, 'LWP::Simple' => 0, 'URI::Escape' => 0 },
)->create_build_script;
