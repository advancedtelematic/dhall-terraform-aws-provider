
let AwsApiGatewayVpcLinkOptional =
  { description: Optional Text }

let AwsApiGatewayVpcLinkRequired =
  { name: Text
  , target_arns: (List Text)
  }
let AwsApiGatewayVpcLink = AwsApiGatewayVpcLinkOptional //\\ AwsApiGatewayVpcLinkRequired

in
{ AwsApiGatewayVpcLinkOptional = AwsApiGatewayVpcLinkOptional
, AwsApiGatewayVpcLinkRequired = AwsApiGatewayVpcLinkRequired
, AwsApiGatewayVpcLink = AwsApiGatewayVpcLink
}
