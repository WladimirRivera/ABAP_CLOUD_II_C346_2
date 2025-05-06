CLASS zcl_01_exec_log_c346 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_exec_log_c346 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

* Exemptions
*    DATA lx_auth TYPE REF TO zcx_01_auth_log_c346.
*
*    DATA: lv_result TYPE i,
*          lv_num1   TYPE i VALUE 10,
*          lv_num2   TYPE i.
*
*    DATA(lo_manage_ord) = NEW zcl_02_manage_orders_c346( ).
*
*
*    TRY.
*
*        "lo_manage_ord->check_user( sy-uname ).
*
*        lv_result = lv_num1 / lv_num2.
*
*
*      CATCH zcx_01_auth_log_c346 INTO lx_auth.
*
*        out->write( lx_auth->get_text( ) ).
*
*      CATCH cx_sy_zerodivide  INTO DATA(lx_zero_div).
*
*        out->write( lx_zero_div->get_text( ) ).
*
*        lv_num2 = 2.
*
*        RETRY.
*
*    ENDTRY.
*
*    out->write( lv_result ).

* Singleton
*
*    DATA: lo_singleton1 TYPE REF TO zcl_03_singleton_c346,
*          lo_singleton2 TYPE REF TO zcl_03_singleton_c346.
*
*    lo_singleton1 = zcl_03_singleton_c346=>get_instance( ).
*    WAIT UP TO 2 SECONDS.
*    lo_singleton2 = zcl_03_singleton_c346=>get_instance( ).
*
*    out->write( lo_singleton1->mv_time ).
*    out->write( lo_singleton2->mv_time ).

* Factory Method
*
*    DATA: lo_shape   TYPE REF TO zif_01_geometric_fig_c346,
*          lo_factory TYPE REF TO zcl_07_factory_log_c346.
*
*    lo_factory = NEW #( ).
*
*    lo_shape = lo_factory->get_shape( 'Circle' ).
*
*    out->write( lo_shape->draw_shape( ) ).

* Model - View - Controller
*
*    DATA: lv_name TYPE string VALUE 'Juan Perez',
*          lv_role TYPE string VALUE 'ABAP Developer'.
*
*    DATA(lo_model) = NEW zcl_08_model_c346(
*      iv_name = lv_name
*      iv_role = lv_role ).
*
*    DATA(lo_view) = NEW zcl_09_view_c346( ).
*    DATA(lo_controller) = NEW zcl_10_controller_c346( ).
*
*    lo_controller->set_model( lo_model ).
*    lo_controller->set_view( lo_view ).
*
*    lo_controller->get_view( )->display_employee(
*      iv_name = lo_model->get_name( )
*      iv_role = lo_model->get_role( )
*      io_out  = out ).

* Factorial - Business process

    DATA(lo_bp) = NEW zcl_11_busniess_pr_log_c346( ).

    lo_bp->get_factorial(
      EXPORTING
        iv_number    = 5
      IMPORTING
        ev_factorial = DATA(lv_factorial) ).

    out->write( lv_factorial ).





















  ENDMETHOD.

ENDCLASS.
