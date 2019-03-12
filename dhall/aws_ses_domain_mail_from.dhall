
let AwsSesDomainMailFromOptional =
  { behavior_on_mx_failure : Optional Text }

let AwsSesDomainMailFromRequired =
  { domain : Text
  , mail_from_domain : Text
  }
let AwsSesDomainMailFrom = AwsSesDomainMailFromOptional //\\ AwsSesDomainMailFromRequired

in
{ AwsSesDomainMailFromOptional = AwsSesDomainMailFromOptional
, AwsSesDomainMailFromRequired = AwsSesDomainMailFromRequired
, AwsSesDomainMailFrom = AwsSesDomainMailFrom
}
