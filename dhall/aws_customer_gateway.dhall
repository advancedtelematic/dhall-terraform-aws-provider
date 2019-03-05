
let AwsCustomerGatewayOptional =
  { tags: Optional (List { mapKey : Text, mapValue : Text }) }

let AwsCustomerGatewayRequired =
  { bgp_asn: Natural
  , ip_address: Text
  , type: Text
  }
let AwsCustomerGateway = AwsCustomerGatewayOptional //\\ AwsCustomerGatewayRequired

in
{ AwsCustomerGatewayOptional = AwsCustomerGatewayOptional
, AwsCustomerGatewayRequired = AwsCustomerGatewayRequired
, AwsCustomerGateway = AwsCustomerGateway
}
