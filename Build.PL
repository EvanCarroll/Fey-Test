use strict;
use warnings;

use Module::Build;

my $builder = Module::Build->new
    ( module_name => 'Fey::Test',
      license     => 'perl',
      requires    => { 'DBI'             => 0,
                       'File::Temp'      => 0,
                       'List::MoreUtils' => 0,
                       'Test::More'      => 0,
                     },
      create_makefile_pl => 'traditional',
      create_readme      => 1,
      sign               => 1,
      meta_merge =>
          { resources =>
                { homepage   => 'http://www.fey-project.org/',
                  bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Fey-Test',
                  repository => 'http://hg.urth.org/hg/Fey-Test',
                },
          },
    );

$builder->create_build_script();
