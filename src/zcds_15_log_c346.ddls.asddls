@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association - Publication'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_15_log_c346
  as select from /dmo/travel as Travel

  association [1..1] to /dmo/customer as _Customer on _Customer.customer_id = $projection.CustomerId
  association [1..1] to /dmo/agency   as _Agency   on _Agency.agency_id = $projection.AgencyId
  association [0..*] to /dmo/booking  as _Booking  on _Booking.travel_id = $projection.TravelId

{

  key Travel.travel_id   as TravelId,
      Travel.customer_id as CustomerId,
      Travel.agency_id   as AgencyId,
      _Customer,
      _Agency,
      _Booking

}
