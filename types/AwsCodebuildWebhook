
let AwsCodebuildWebhookOptional =
  { branch_filter : Optional Text
  , secret : Optional Text
  }

let AwsCodebuildWebhookRequired =
  { project_name : Text }
let AwsCodebuildWebhook = AwsCodebuildWebhookOptional //\\ AwsCodebuildWebhookRequired

in
{ AwsCodebuildWebhookOptional = AwsCodebuildWebhookOptional
, AwsCodebuildWebhookRequired = AwsCodebuildWebhookRequired
, AwsCodebuildWebhook = AwsCodebuildWebhook
}
