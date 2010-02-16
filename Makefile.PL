
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'MooseX::Worm',
                       'DISTNAME' => 'MooseX-Worm',
                       'AUTHOR' => 'Ricardo SIGNES <rjbs@cpan.org>',
                       'ABSTRACT' => 'write-once, read-many attributes for Moose',
                       'EXE_FILES' => [],
                       'VERSION' => '0.100470',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'Try::Tiny' => 0,
                                        'Test::More' => 0,
                                        'Moose::Role' => '0.90',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'Moose' => 0
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



