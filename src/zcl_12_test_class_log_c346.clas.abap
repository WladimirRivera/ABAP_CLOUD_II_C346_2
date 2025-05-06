CLASS zcl_12_test_class_log_c346 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.

    METHODS:
      "! @testing zcl_11_busniess_pr_log_c346
      factorial_test FOR TESTING.

  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS: setup,
      teardown.

    DATA: mo_cut TYPE REF TO zcl_11_busniess_pr_log_c346. " CUT - Class under test

ENDCLASS.



CLASS zcl_12_test_class_log_c346 IMPLEMENTATION.

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
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_factorial_ut
        exp                  = 24 ).

  ENDMETHOD.

  METHOD setup.
    mo_cut = NEW #( ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR mo_cut.
  ENDMETHOD.

ENDCLASS.
