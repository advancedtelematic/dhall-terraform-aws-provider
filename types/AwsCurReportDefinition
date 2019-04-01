
let AwsCurReportDefinitionOptional =
  { additional_artifacts : Optional (List Text)
  , s3_prefix : Optional Text
  }

let AwsCurReportDefinitionRequired =
  { additional_schema_elements : (List Text)
  , compression : Text
  , format : Text
  , report_name : Text
  , s3_bucket : Text
  , s3_region : Text
  , time_unit : Text
  }
let AwsCurReportDefinition = AwsCurReportDefinitionOptional //\\ AwsCurReportDefinitionRequired

in
{ AwsCurReportDefinitionOptional = AwsCurReportDefinitionOptional
, AwsCurReportDefinitionRequired = AwsCurReportDefinitionRequired
, AwsCurReportDefinition = AwsCurReportDefinition
}
