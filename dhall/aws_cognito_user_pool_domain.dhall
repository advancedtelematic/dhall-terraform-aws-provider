
let AwsCognitoUserPoolDomainOptional =
  { certificate_arn: Optional Text }

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
