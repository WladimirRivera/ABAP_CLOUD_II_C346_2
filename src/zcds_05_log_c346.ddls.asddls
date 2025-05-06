@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Union'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_05_log_c346
  as select from /dmo/travel
{
  key travel_id                  as TravelID,
      cast('' as abap.numc( 4 )) as BookingID
}

union all

select distinct from /dmo/booking
{

  key travel_id  as TravelID,
      booking_id as BookingID

}
