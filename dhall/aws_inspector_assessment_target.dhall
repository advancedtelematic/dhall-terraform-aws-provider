
let AwsInspectorAssessmentTargetOptional =
  { arn: Optional Text
  , resource_group_arn: Optional Text
  }

let AwsInspectorAssessmentTargetRequired =
  { name: Text }
let AwsInspectorAssessmentTarget = AwsInspectorAssessmentTargetOptional //\\ AwsInspectorAssessmentTargetRequired

in
{ AwsInspectorAssessmentTargetOptional = AwsInspectorAssessmentTargetOptional
, AwsInspectorAssessmentTargetRequired = AwsInspectorAssessmentTargetRequired
, AwsInspectorAssessmentTarget = AwsInspectorAssessmentTarget
}
