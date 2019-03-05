
let IdentityProviderOptional = {}

let IdentityProviderRequired =
  { saml_metadata: Text
  , type: Text
  }
let IdentityProvider = IdentityProviderOptional //\\ IdentityProviderRequired

let NetworkOptional = {}

let NetworkRequired =
  { security_group_ids: (List Text)
  , subnet_ids: (List Text)
  , vpc_id: Text
  }
let Network = NetworkOptional //\\ NetworkRequired

let AwsWorklinkFleetOptional =
  { arn: Optional Text
  , audit_stream_arn: Optional Text
  , company_code: Optional Text
  , created_time: Optional Text
  , device_ca_certificate: Optional Text
  , display_name: Optional Text
  , last_updated_time: Optional Text
  , optimize_for_end_user_location: Optional Bool
  , identity_provider: Optional IdentityProvider
  , network: Optional Network
  }

let AwsWorklinkFleetRequired =
  { name: Text }
let AwsWorklinkFleet = AwsWorklinkFleetOptional //\\ AwsWorklinkFleetRequired

in
{ AwsWorklinkFleetOptional = AwsWorklinkFleetOptional
, AwsWorklinkFleetRequired = AwsWorklinkFleetRequired
, AwsWorklinkFleet = AwsWorklinkFleet
, Network = Network
, IdentityProvider = IdentityProvider
}
