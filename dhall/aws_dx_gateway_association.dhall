
let AwsDxGatewayAssociationOptional = {}

let AwsDxGatewayAssociationRequired =
  { dx_gateway_id: Text
  , vpn_gateway_id: Text
  }
let AwsDxGatewayAssociation = AwsDxGatewayAssociationOptional //\\ AwsDxGatewayAssociationRequired

in
{ AwsDxGatewayAssociation = AwsDxGatewayAssociation
}
