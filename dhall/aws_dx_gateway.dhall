
let AwsDxGatewayOptional = {}

let AwsDxGatewayRequired =
  { amazon_side_asn: Text
  , name: Text
  }
let AwsDxGateway = AwsDxGatewayOptional //\\ AwsDxGatewayRequired

in
{ AwsDxGateway = AwsDxGateway
}
