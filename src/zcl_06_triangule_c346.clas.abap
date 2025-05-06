CLASS zcl_06_triangule_c346 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: zif_01_geometric_fig_c346.

    ALIASES draw_shape FOR zif_01_geometric_fig_c346~draw_shape.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_06_triangule_c346 IMPLEMENTATION.

  METHOD draw_shape.

    rv_shape = 'Triangule'.

  ENDMETHOD.

ENDCLASS.
