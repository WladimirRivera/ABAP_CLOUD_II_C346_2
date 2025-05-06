@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Basic View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
//@ObjectModel.semanticKey: [ 'AirlineId', 'ConnectionId', 'FlightDate' ]
define view entity zcds_01_log_c346
  as select from /dmo/flight
{
  key carrier_id                     as AirlineId,
  key connection_id                  as ConnectionId,
  key flight_date                    as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price                          as Price,
      currency_code                  as CurrencyCode,

      'USD'                          as CurrencyDocument,
      '20300101'                     as DateString,

      cast( '20300101' as abap.dats) as DateDate,

      1.2                            as FlatingPointElement,

      cast(1.2 as abap.dec( 4, 2 ))  as DecimalElement,

      cast( cast( 'E' as abap.lang ) as sylangu preserving type ) as LanguajeElement

}
