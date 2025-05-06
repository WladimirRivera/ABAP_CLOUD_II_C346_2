CLASS zcl_10_controller_c346 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: set_model IMPORTING io_model TYPE REF TO zcl_08_model_c346,
      get_model RETURNING VALUE(ro_model) TYPE REF TO zcl_08_model_c346,

      set_view IMPORTING io_view TYPE REF TO zcl_09_view_c346,
      get_view RETURNING VALUE(ro_view) TYPE REF TO zcl_09_view_c346.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: model TYPE REF TO zcl_08_model_c346,
          view  TYPE REF TO zcl_09_view_c346.

ENDCLASS.



CLASS zcl_10_controller_c346 IMPLEMENTATION.
  METHOD get_model.
    ro_model = me->model.
  ENDMETHOD.

  METHOD set_model.
    me->model = io_model.
  ENDMETHOD.

  METHOD get_view.
    ro_view = me->view.
  ENDMETHOD.

  METHOD set_view.
    me->view = io_view.
  ENDMETHOD.

ENDCLASS.
