
let AwsApiGatewayClientCertificateOptional =
  { created_date: Optional Text
  , description: Optional Text
  , expiration_date: Optional Text
  , pem_encoded_certificate: Optional Text
  }

let AwsApiGatewayClientCertificateRequired = {}
let AwsApiGatewayClientCertificate = AwsApiGatewayClientCertificateOptional //\\ AwsApiGatewayClientCertificateRequired

in
{ AwsApiGatewayClientCertificateOptional = AwsApiGatewayClientCertificateOptional
, AwsApiGatewayClientCertificateRequired = AwsApiGatewayClientCertificateRequired
, AwsApiGatewayClientCertificate = AwsApiGatewayClientCertificate
}
