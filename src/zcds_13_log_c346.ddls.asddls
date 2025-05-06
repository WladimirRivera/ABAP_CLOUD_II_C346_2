@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association with parameters'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_13_log_c346

  with parameters
    pCountryCode : land1

  as select from /dmo/travel as Travel

  association [1..1] to zcds_12_log_c346 as _Agency on _Agency.AgencyId = $projection.AgencyID
{

  key travel_id                                                                  as TravelID,
      Travel.agency_id                                                           as AgencyID,
      _Agency( pCountryCode: $parameters.pCountryCode )[ City = 'Chicago' ].Name as AgencyName

}
