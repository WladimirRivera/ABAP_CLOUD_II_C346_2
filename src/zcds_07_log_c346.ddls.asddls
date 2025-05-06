@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'AVG - Type conversion'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_07_log_c346
  as select from /dmo/travel
{
  key travel_id,
      agency_id,

      cast(total_price as abap.dec( 16, 2 )) as Total_price,
      currency_code

}
