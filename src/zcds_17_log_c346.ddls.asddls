@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association - Explicit Join'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_17_log_c346
  as select from /dmo/travel as Travel

  association [1..1] to /dmo/customer as _Customer on _Customer.customer_id = $projection.CustomerId
  association [1..1] to /dmo/agency   as _Agency   on _Agency.agency_id = $projection.AgencyId

{

  key Travel.travel_id                                                              as TravelId,
      Travel.customer_id                                                            as CustomerId,
      concat_with_space(_Customer[inner].first_name, _Customer[inner].last_name, 2) as CustomerName,
      Travel.agency_id                                                              as AgencyId,
      _Agency[inner].name                                                           as AgencyName

}
