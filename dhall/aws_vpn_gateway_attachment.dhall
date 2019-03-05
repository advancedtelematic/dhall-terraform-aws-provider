
let AwsVpnGatewayAttachmentOptional = {}

let AwsVpnGatewayAttachmentRequired =
  { vpc_id: Text
  , vpn_gateway_id: Text
  }
let AwsVpnGatewayAttachment = AwsVpnGatewayAttachmentOptional //\\ AwsVpnGatewayAttachmentRequired

in
{ AwsVpnGatewayAttachment = AwsVpnGatewayAttachment
}
