@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection - Contract Type Interface'
@Metadata.ignorePropagatedAnnotations: false
define root view entity zcds_26_log_c346 
provider contract transactional_interface
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
  _Booking: redirected to composition child zcds_27_log_c346,
  _Customer
    
}
