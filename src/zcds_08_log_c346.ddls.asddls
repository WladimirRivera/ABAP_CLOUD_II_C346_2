@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Amount Conversion'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_08_log_c346

  with parameters
    pFromCurrency : abap.cuky( 5 ),
    pToCurrency   : abap.cuky( 5 )

  as select from /dmo/travel
{
  key travel_id                                              as Travel_ID,

      @Semantics.amount.currencyCode: 'Original_Currency'
      total_price                                            as Original_Price,
      currency_code                                          as Original_Currency,

      @Semantics.amount.currencyCode: 'Converted_Currency'
      currency_conversion( amount => total_price,
                           source_currency => $parameters.pFromCurrency,
                           target_currency => $parameters.pToCurrency,
                           exchange_rate_date => $session.system_date,
                           client => $session.client,
                           error_handling => 'SET_TO_NULL' ) as Converted_Price,

      $parameters.pToCurrency                                as Converted_Currency

}

where
  currency_code = $parameters.pFromCurrency
