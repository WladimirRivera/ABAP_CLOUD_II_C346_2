@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection - Contract Type Query'
@Metadata.ignorePropagatedAnnotations: false
define root view entity zcds_28_log_c346
 provider contract transactional_query
  as projection on zcds_24_log_c346
{
   key TravelId,
   AgencyId,
   CustomerId,
   BeginDate,
   EndDate,
   BookingFee,
   TotalPrice,
   CurrencyCode,
   Description,
   Status,
   Createdby,
   Createdat,
   Lastchangedby,
   Lastchangedat,
   /* Associations */
   _Agency,
   _Booking : redirected to composition child zcds_29_log_c346 ,
   _Customer
  }
