
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"
#include "perlapi.h"

AV   *_get_begin_array();
AV   *_get_check_array();
/*AV *_get_unitcheck_array(); */
AV   *_get_init_array();
AV   *_get_end_array();

AV *_get_begin_array() {
    if ( !PL_beginav ) {
        PL_beginav = newAV();
    }
    return PL_beginav;
}

AV *_get_check_array() {
    if ( !PL_checkav ) {
        PL_checkav = newAV();
    }
    return PL_checkav;
}

/* TODO: get_unitcheck_array for 5.10 */

AV *_get_init_array() {
    if ( !PL_initav ) {
        PL_initav = newAV();
    }
    return PL_initav;
}

AV *_get_end_array() {
    if ( !PL_endav ) {
        PL_endav = newAV();
    }
    return PL_endav;
}

MODULE = Devel::Hook		PACKAGE = Devel::Hook

AV*
_get_begin_array()

AV*
_get_check_array()

AV*
_get_init_array()

AV *
_get_end_array()

