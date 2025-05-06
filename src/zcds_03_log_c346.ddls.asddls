@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Session Variables'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_03_log_c346
  as select from /dmo/customer
{
  key customer_id              as CustomerId,
      $session.client          as ClientField,
      $session.system_date     as SystemDate,
      $session.system_language as SystemLanguaje,
      $session.user            as UserField,
      $session.user_date       as UserDate,
      $session.user_timezone   as UserTZ

      //$session.bs_instance_id  as BSIntanceID,
      //$session.bs_zone_id      as BSZoneID
}
