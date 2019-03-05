
let AwsCodebuildWebhookOptional =
  { branch_filter: Optional Text
  , payload_url: Optional Text
  , secret: Optional Text
  , url: Optional Text
  }

let AwsCodebuildWebhookRequired =
  { project_name: Text }
let AwsCodebuildWebhook = AwsCodebuildWebhookOptional //\\ AwsCodebuildWebhookRequired

in
{ AwsCodebuildWebhookOptional = AwsCodebuildWebhookOptional
, AwsCodebuildWebhookRequired = AwsCodebuildWebhookRequired
, AwsCodebuildWebhook = AwsCodebuildWebhook
}
