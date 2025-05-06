@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Aggregations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_06_log_c346
  as select from zcds_07_log_c346
{

//  key travel_id,
//      agency_id,
   
   
      @Semantics.amount.currencyCode: 'CurrencyCode'
      min( Total_price )                      as MinTotalPrice,

      max( Total_price )                      as MaxTotalPrice,

      sum( Total_price )                      as SumTOtalPrice,

      count( distinct Total_price )           as CountDistinctTotalPrice,

      count( * )                              as CountAll,

      avg( Total_price as abap.dec( 16, 2 ) ) as AVGTotalPrice,

      currency_code                           as CurrencyCode

}

group by
//  travel_id,
//  agency_id,
  
 currency_code 
