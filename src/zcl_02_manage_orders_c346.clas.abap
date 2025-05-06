CLASS zcl_02_manage_orders_c346 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: check_user IMPORTING iv_user TYPE syuname
                        RAISING   zcx_01_auth_log_c346.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_manage_orders_c346 IMPLEMENTATION.

  METHOD check_user.

    IF sy-uname EQ 'CB9980000126'.

      RAISE EXCEPTION TYPE zcx_01_auth_log_c346
        EXPORTING
          textid = zcx_01_auth_log_c346=>no_auth
*         previous =
          msgv1  = |{ sy-uname }|
          msgv2  = 'Edit Orders'
*         msgv3  =
*         msgv4  =
        .

    ENDIF.

  ENDMETHOD.

ENDCLASS.
