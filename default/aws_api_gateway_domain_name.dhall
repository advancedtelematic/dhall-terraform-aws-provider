
let endpointConfiguration = {}

let awsApiGatewayDomainName =
  { certificate_arn = None Text
  , certificate_body = None Text
  , certificate_chain = None Text
  , certificate_name = None Text
  , certificate_private_key = None Text
  , regional_certificate_arn = None Text
  , regional_certificate_name = None Text
  }

in
{ awsApiGatewayDomainName = awsApiGatewayDomainName
}
