
let AwsInspectorAssessmentTemplateOptional = {}

let AwsInspectorAssessmentTemplateRequired =
  { duration: Natural
  , name: Text
  , rules_package_arns: (List Text)
  , target_arn: Text
  }
let AwsInspectorAssessmentTemplate = AwsInspectorAssessmentTemplateOptional //\\ AwsInspectorAssessmentTemplateRequired

in
{ AwsInspectorAssessmentTemplate = AwsInspectorAssessmentTemplate
}
