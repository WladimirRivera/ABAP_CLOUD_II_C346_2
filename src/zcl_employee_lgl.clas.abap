CLASS zcl_employee_lgl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_employee_lgl IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    MODIFY zemployee_lgl FROM TABLE @( VALUE #( ( employee = '1'  manager = ''  name = 'Name 1' )
                                               ( employee = '2'  manager = '1' name = 'Name 2' )
                                               ( employee = '3'  manager = '2' name = 'Name 3' )
                                               ( employee = '4'  manager = '2' name = 'Name 4' )
                                               ( employee = '5'  manager = ''  name = 'Name 5' )
                                               ( employee = '6'  manager = '5' name = 'Name 6' )
                                               ( employee = '7'  manager = '5' name = 'Name 7' )
                                               ( employee = '8'  manager = '7' name = 'Name 8' )
                                               ( employee = '9'  manager = '8' name = 'Name 9' )
                                               ( employee = '10' manager = '8' name = 'Name 10' ) ) ).

  ENDMETHOD.

ENDCLASS.
