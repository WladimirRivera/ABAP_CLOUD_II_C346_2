*"* use this source file for your ABAP unit test classes
CLASS ltcl_BP_log DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      factorial_test FOR TESTING RAISING cx_static_check.

    METHODS: setup,
      teardown.

    DATA: mo_cut TYPE REF TO zcl_11_busniess_pr_log_c346. " CUT - Class under test
ENDCLASS.


CLASS ltcl_BP_log IMPLEMENTATION.

  METHOD factorial_test.

    " Given
    DATA(lv_number_ut) = 4.
    DATA lv_factorial_ut TYPE i.

    " When
    mo_cut->get_factorial(
      EXPORTING
        iv_number    = lv_number_ut
      IMPORTING
        ev_factorial = lv_factorial_ut ).

    " Then
    IF cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_factorial_ut
        exp                  = 24 ).

      cl_abap_unit_assert=>fail( 'BP Factorial failed' ).

    ENDIF.
  ENDMETHOD.

  METHOD setup.
    mo_cut = NEW #( ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR: mo_cut.
  ENDMETHOD.

ENDCLASS.
