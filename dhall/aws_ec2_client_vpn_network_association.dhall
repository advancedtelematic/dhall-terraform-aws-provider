
let AwsEc2ClientVpnNetworkAssociationOptional = {}

let AwsEc2ClientVpnNetworkAssociationRequired =
  { client_vpn_endpoint_id : Text
  , subnet_id : Text
  }
let AwsEc2ClientVpnNetworkAssociation = AwsEc2ClientVpnNetworkAssociationOptional //\\ AwsEc2ClientVpnNetworkAssociationRequired

in
{ AwsEc2ClientVpnNetworkAssociation = AwsEc2ClientVpnNetworkAssociation
}
