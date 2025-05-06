@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Transient - Analytical Query'
@ObjectModel.modelingPattern: #ANALYTICAL_QUERY
@ObjectModel.supportedCapabilities: [#ANALYTICAL_QUERY]
define transient view entity zcds_32_log_c326
  provider contract analytical_query
  as projection on zcds_31_log_c326
{
          @AnalyticsDetails.query.axis: #FREE
          SoKey                                                          as SalesOrderKey,

          @AnalyticsDetails.query.axis: #ROWS
          LifecycleStatus,

          @AnalyticsDetails.query.axis: #COLUMNS
          QuantitySum,
          UomSum,

          @ObjectModel.text.element: [ 'CurrencyDescription' ]
          CurrencySum,
          _Currency._Text.CurrencyName                                   as CurrencyDescription : localized,

          @Aggregation.default: #FORMULA
          abap.decfloat34'0.05'                                          as discount,

          @Aggregation.default: #FORMULA
          @Semantics.quantity.unitOfMeasure: 'AmPerQuant'
          curr_to_decfloat_amount( AmountSum ) / $projection.quantitysum as AmountperQuantity,

  virtual AmPerQuant     : dd_cds_calculated_unit,

          @Aggregation.default: #FORMULA
          @Semantics.amount.currencyCode: 'TargetCurrency'
          currency_conversion( amount => curr_to_decfloat_amount( AmountSum ),
                               source_currency => CurrencySum,
                               target_currency => abap.cuky'EUR',
                               exchange_rate_date => CreatedOn )         as ConvertedAmount,

  virtual TargetCurrency : abap.cuky
}
