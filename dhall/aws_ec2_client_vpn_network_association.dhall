
let AwsEc2ClientVpnNetworkAssociationOptional =
  { security_groups: Optional (List Text)
  , status: Optional Text
  , vpc_id: Optional Text
  }

let AwsEc2ClientVpnNetworkAssociationRequired =
  { client_vpn_endpoint_id: Text
  , subnet_id: Text
  }
let AwsEc2ClientVpnNetworkAssociation = AwsEc2ClientVpnNetworkAssociationOptional //\\ AwsEc2ClientVpnNetworkAssociationRequired

in
{ AwsEc2ClientVpnNetworkAssociationOptional = AwsEc2ClientVpnNetworkAssociationOptional
, AwsEc2ClientVpnNetworkAssociationRequired = AwsEc2ClientVpnNetworkAssociationRequired
, AwsEc2ClientVpnNetworkAssociation = AwsEc2ClientVpnNetworkAssociation
}
