CLASS zcl_03_singleton_c346 DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE .

  PUBLIC SECTION.

    DATA: mv_time TYPE zsyst_uzeit.

    METHODS: constructor.

    CLASS-METHODS:
      get_instance
        RETURNING VALUE(ro_instance) TYPE REF TO zcl_03_singleton_c346.


  PROTECTED SECTION.
  PRIVATE SECTION.

    CLASS-DATA: mo_instance TYPE REF TO zcl_03_singleton_c346.

ENDCLASS.



CLASS zcl_03_singleton_c346 IMPLEMENTATION.

  METHOD get_instance.

    IF mo_instance IS NOT BOUND.
      mo_instance = NEW #( ).
    ENDIF.

    ro_instance = mo_instance.

  ENDMETHOD.

  METHOD constructor.

    me->mv_time = cl_abap_context_info=>get_system_time( ).

  ENDMETHOD.

ENDCLASS.
