
let AwsCognitoUserPoolDomainOptional =
  { aws_account_id: Optional Text
  , certificate_arn: Optional Text
  , cloudfront_distribution_arn: Optional Text
  , s3_bucket: Optional Text
  , version: Optional Text
  }

let AwsCognitoUserPoolDomainRequired =
  { domain: Text
  , user_pool_id: Text
  }
let AwsCognitoUserPoolDomain = AwsCognitoUserPoolDomainOptional //\\ AwsCognitoUserPoolDomainRequired

in
{ AwsCognitoUserPoolDomainOptional = AwsCognitoUserPoolDomainOptional
, AwsCognitoUserPoolDomainRequired = AwsCognitoUserPoolDomainRequired
, AwsCognitoUserPoolDomain = AwsCognitoUserPoolDomain
}
