CLASS zcl_07_factory_log_c346 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: get_shape IMPORTING iv_shape_type        TYPE string
                       RETURNING VALUE(ro_shape_type) TYPE REF TO zif_01_geometric_fig_c346.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_07_factory_log_c346 IMPLEMENTATION.

  METHOD get_shape.

    CASE iv_shape_type.
      WHEN 'Circle'.
        ro_shape_type = NEW zcl_04_circle_c346( ).
      WHEN 'Square'.
        ro_shape_type = NEW zcl_05_square_c346( ).
      WHEN 'Triangule'.
        ro_shape_type = NEW zcl_06_triangule_c346( ).
    ENDCASE.

  ENDMETHOD.

ENDCLASS.
