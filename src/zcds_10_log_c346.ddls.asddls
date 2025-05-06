@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Joins'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_10_log_c346
  as select from /dmo/travel  as Travel
    inner join   /dmo/booking as Booking on Booking.travel_id = Travel.travel_id
{

  key Travel.travel_id      as TravelID,
  key Booking.booking_id    as BookigID,
      Travel.agency_id      as AgencyID,
      Travel.begin_date     as BeginDate,
      Travel.end_date       as EndDate,
      Booking.booking_date  as BookingDate,
      @Semantics.amount.currencyCode: 'Currency'
      Travel.total_price    as TotalPrice,
      @Semantics.amount.currencyCode: 'Currency'
      Booking.flight_price  as BookingPrice,
      Booking.currency_code as Currency

}
