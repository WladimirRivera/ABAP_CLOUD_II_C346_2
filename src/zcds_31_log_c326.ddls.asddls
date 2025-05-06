@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cube'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

@Analytics.dataCategory: #CUBE
define view entity zcds_31_log_c326
  as select from zso_lgl as SalesOrder

  association [0..1] to zcds_30_log_c346 as _Currency on _Currency.Currency = $projection.CurrencySum
{

  key SalesOrder.so_key           as SoKey,
      SalesOrder.lifecycle_status as LifecycleStatus,
      SalesOrder.company_code     as CompanyCode,
      
      @DefaultAggregation: #SUM
      @Semantics.amount.currencyCode: 'CurrencySum'
      SalesOrder.amount_sum       as AmountSum,
      
      @ObjectModel.foreignKey.association: '_Currency'
      SalesOrder.currency_sum     as CurrencySum,
      
      @DefaultAggregation: #SUM
      @Semantics.quantity.unitOfMeasure: 'UomSum'
      SalesOrder.quantity_sum     as QuantitySum,
      SalesOrder.uom_sum          as UomSum,
      
      @DefaultAggregation: #NONE
      SalesOrder.created_by       as CreatedBy,
      
      @DefaultAggregation: #NONE
      SalesOrder.created_on       as CreatedOn,
      
      _Currency

}
