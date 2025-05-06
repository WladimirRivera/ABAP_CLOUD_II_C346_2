@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Case'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_02_log_c346
  as select from /dmo/customer
{
  key customer_id  as CustomerId,
      country_code as CountryCode,

      case country_code
        when 'US' then concat('United States -', concat_with_space(first_name, last_name, 2) )
       when 'DE' then concat('Germany - ', last_name )
       when 'ES' then concat('Spain -', last_name )
       else 'Another Country Code'
       end         as case1,

      case
        when country_code = 'US' or country_code = 'ES' then case title
                                                                when 'Mr.' then 'US/ES - Mr.'
                                                                when 'Mrs.' then  'US/ES - Mrs.'
                                                                else 'US/es - Different Title'
                                                                end
        when title = 'Mr.' then last_name
        when cast('20300101' as abap.dats) < dats_add_days( $session.system_date, -30, 'NULL') then 'Lower Date'
        else 'Nocondittion applied'
        end        as case2


}
