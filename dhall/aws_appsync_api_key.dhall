
let AwsAppsyncApiKeyOptional =
  { description: Optional Text
  , expires: Optional Text
  , key: Optional Text
  }

let AwsAppsyncApiKeyRequired =
  { api_id: Text }
let AwsAppsyncApiKey = AwsAppsyncApiKeyOptional //\\ AwsAppsyncApiKeyRequired

in
{ AwsAppsyncApiKeyOptional = AwsAppsyncApiKeyOptional
, AwsAppsyncApiKeyRequired = AwsAppsyncApiKeyRequired
, AwsAppsyncApiKey = AwsAppsyncApiKey
}
