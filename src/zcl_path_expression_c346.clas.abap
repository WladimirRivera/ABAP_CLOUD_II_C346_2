CLASS zcl_path_expression_c346 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_path_expression_c346 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lt_abstract TYPE TABLE OF zcds_21_log_c346.

    SELECT FROM zcds_19_log_c346 AS Booking
    FIELDS Booking~TravelId,
           Booking~BookingId,
           \_Travel-AgencyId,
           \_Travel\_Agency-name AS AgencyName,
           \_Travel\_Customer-customer_id AS CustomerId,
           concat_with_space( \_Travel\_Customer-first_name, \_Travel\_Customer-last_name, 1 ) AS CustomerName
    WHERE Booking~CarrierId = 'AA'
    INTO TABLE @DATA(lt_results)
    UP TO 5 ROWS.

    IF sy-subrc = 0.
      out->write( lt_results ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
