CLASS zcl_13_cds_call_c346 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_13_cds_call_c346 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    SELECT * FROM zcds_08_log_c346( pfromcurrency = 'USD',
                                    ptocurrency  = 'EUR' )
    INTO TABLE @DATA(lt_conversion).

    out->write( lt_conversion ).

  ENDMETHOD.

ENDCLASS.
