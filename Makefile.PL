
use 5.000;
use ExtUtils::MakeMaker;

my $EUMM_VERSION = eval $ExtUtils::MakeMaker::VERSION;

WriteMakefile(
    'NAME'		=> 'Devel::Hook',
    'VERSION_FROM'	=> 'lib/Devel/Hook.pm', 
    'PREREQ_PM'		=> {
        'strict'            => 0,
        'warnings'          => 0,
      ( 'warnings::compat'  => 0, ) x!! ( $] < 5.006 ),
        'XSLoader'          => 0,

        # test requires
        'Test::More'        => 0,
    }, 
  ( $] >= 5.005 ? (
       'ABSTRACT_FROM'      => 'lib/Devel/Hook.pod',
       'AUTHOR'             => 'Adriano Ferreira <ferreira@cpan.org>',
  ) : () ),
  ( $EUMM_VERSION >= 6.31 ? (
       'LICENSE'            => 'perl',
       'EXTRA_META'         => "recommends:\n" .
                               "    Test::Pod:                     1.18\n" .
                               "    Test::Pod::Coverage:           1.04\n" ,
  ) : () ),
    # XS related stuff
    'DEFINE'		=> '', # e.g., '-DHAVE_SOMETHING'
    'INC'		=> '-I.', # e.g., '-I. -I/usr/include/other'
    'OPTIMIZE' => '-g',
    'PMLIBDIRS' => ['lib'],
);
