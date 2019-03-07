
let AuthenticationOptionsOptional =
  { active_directory_id: Optional Text
  , root_certificate_chain_arn: Optional Text
  }

let AuthenticationOptionsRequired =
  { type: Text }
let AuthenticationOptions = AuthenticationOptionsOptional //\\ AuthenticationOptionsRequired

let ConnectionLogOptionsOptional =
  { cloudwatch_log_group: Optional Text
  , cloudwatch_log_stream: Optional Text
  }

let ConnectionLogOptionsRequired =
  { enabled: Bool }
let ConnectionLogOptions = ConnectionLogOptionsOptional //\\ ConnectionLogOptionsRequired

let AwsEc2ClientVpnEndpointOptional =
  { description: Optional Text
  , dns_servers: Optional (List Text)
  , transport_protocol: Optional Text
  }

let AwsEc2ClientVpnEndpointRequired =
  { client_cidr_block: Text
  , server_certificate_arn: Text
  , authentication_options: AuthenticationOptions
  , connection_log_options: ConnectionLogOptions
  }
let AwsEc2ClientVpnEndpoint = AwsEc2ClientVpnEndpointOptional //\\ AwsEc2ClientVpnEndpointRequired

in
{ AwsEc2ClientVpnEndpointOptional = AwsEc2ClientVpnEndpointOptional
, AwsEc2ClientVpnEndpointRequired = AwsEc2ClientVpnEndpointRequired
, AwsEc2ClientVpnEndpoint = AwsEc2ClientVpnEndpoint
, ConnectionLogOptionsOptional = ConnectionLogOptionsOptional
, ConnectionLogOptionsRequired = ConnectionLogOptionsRequired
, ConnectionLogOptions = ConnectionLogOptions
, AuthenticationOptionsOptional = AuthenticationOptionsOptional
, AuthenticationOptionsRequired = AuthenticationOptionsRequired
, AuthenticationOptions = AuthenticationOptions
}
