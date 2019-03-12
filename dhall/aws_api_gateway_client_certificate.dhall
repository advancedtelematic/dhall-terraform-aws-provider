
let AwsApiGatewayClientCertificateOptional =
  { description : Optional Text }

let AwsApiGatewayClientCertificateRequired = {}
let AwsApiGatewayClientCertificate = AwsApiGatewayClientCertificateOptional //\\ AwsApiGatewayClientCertificateRequired

in
{ AwsApiGatewayClientCertificateOptional = AwsApiGatewayClientCertificateOptional
, AwsApiGatewayClientCertificateRequired = AwsApiGatewayClientCertificateRequired
, AwsApiGatewayClientCertificate = AwsApiGatewayClientCertificate
}
