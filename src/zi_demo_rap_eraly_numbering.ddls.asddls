@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'copy from DEMO_RAP_EARLY_NUMBRING'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define root view entity ZI_DEMO_RAP_ERALY_NUMBERING
  as select from ztb_early_number
{
  key nameid   as Id,
      nametext as Name,
      age      as Age
}
