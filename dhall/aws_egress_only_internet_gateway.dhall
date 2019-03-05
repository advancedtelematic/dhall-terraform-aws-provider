
let AwsEgressOnlyInternetGatewayOptional = {}

let AwsEgressOnlyInternetGatewayRequired =
  { vpc_id: Text }
let AwsEgressOnlyInternetGateway = AwsEgressOnlyInternetGatewayOptional //\\ AwsEgressOnlyInternetGatewayRequired

in
{ AwsEgressOnlyInternetGateway = AwsEgressOnlyInternetGateway
}
