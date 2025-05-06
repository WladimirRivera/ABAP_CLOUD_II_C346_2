@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection - Child Interface'
@Metadata.ignorePropagatedAnnotations: false
define view entity zcds_27_log_c346
  as projection on zcds_25_log_c346
{
  key TravelId,
  key BookingId,
      BookingDate,
      CustomerId,
      CarrierId,
      ConnectionId,
      FlightDate,
      FlightPrice,
      CurrencyCode,
      /* Associations */
      _Customer,
      _Travel: redirected to parent zcds_26_log_c346
}
