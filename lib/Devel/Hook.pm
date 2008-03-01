
package Devel::Hook;

use strict;
use warnings;

$Devel::Hook::VERSION = '0.002';

require XSLoader;
XSLoader::load( 'Devel::Hook', $Devel::Hook::VERSION );


sub unshift_BEGIN_hook {
    shift;
    _check( @_ );
    unshift @{ _get_begin_array() }, @_;
}

sub push_BEGIN_hook {
    shift;
    _check( @_ );
    push @{ _get_begin_array() }, @_;
}


sub unshift_CHECK_hook {
    shift;
    _check( @_ );
    unshift @{ _get_check_array() }, @_;
}

sub push_CHECK_hook {
    shift;
    _check( @_ );
    push @{ _get_check_array() }, @_;
}


sub unshift_INIT_hook {
    shift;
    _check( @_ );
    unshift @{ _get_init_array() }, @_;
}

sub push_INIT_hook {
    shift;
    _check( @_ );
    push @{ _get_init_array() }, @_;
}


sub unshift_END_hook {
    shift;
    _check( @_ );
    unshift @{ _get_end_array() }, @_;
}

sub push_END_hook {
    shift;
    _check( @_ );
    push @{ _get_end_array() }, @_;
}


sub _check {
    if ( grep { !UNIVERSAL::isa($_, "CODE") } @_ ) {
        die "BEGIN/UNITCHECK/CHECK/INIT/END blocks must be CODE references"; # FIXME
    }
}


1;

