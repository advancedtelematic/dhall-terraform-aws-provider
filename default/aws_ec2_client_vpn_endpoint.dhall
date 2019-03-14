
let authenticationOptions =
  { active_directory_id = None Text
  , root_certificate_chain_arn = None Text
  }

let connectionLogOptions =
  { cloudwatch_log_group = None Text
  , cloudwatch_log_stream = None Text
  }

let awsEc2ClientVpnEndpoint =
  { description = None Text
  , dns_servers = None (List Text)
  , transport_protocol = None Text
  }

in
{ awsEc2ClientVpnEndpoint = awsEc2ClientVpnEndpoint
, connectionLogOptions = connectionLogOptions
, authenticationOptions = authenticationOptions
}
