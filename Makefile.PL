
use 5.000;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'		=> 'Devel::Hook',
    'VERSION_FROM'	=> 'lib/Devel/Hook.pm', 
    'PREREQ_PM'		=> {
        'strict'            => 0,
        'warnings'          => 0,
        'XSLoader'          => 0,

        'Test::More'        => 0,
    }, 
    ($] >= 5.005 ?    
      (
       'AUTHOR'     => 'Fergal Daly <fergal@esatclear.ie>'
    ) : ()),
    'DEFINE'		=> '', # e.g., '-DHAVE_SOMETHING'
    'INC'		=> '-I.', # e.g., '-I. -I/usr/include/other'
    'OPTIMIZE' => '-g',
#    'OBJECT'    => 'Hook.o',
    'PMLIBDIRS' => ['lib'],
);
