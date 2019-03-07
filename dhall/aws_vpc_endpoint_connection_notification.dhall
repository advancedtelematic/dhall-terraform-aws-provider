
let AwsVpcEndpointConnectionNotificationOptional =
  { vpc_endpoint_id: Optional Text
  , vpc_endpoint_service_id: Optional Text
  }

let AwsVpcEndpointConnectionNotificationRequired =
  { connection_events: (List Text)
  , connection_notification_arn: Text
  }
let AwsVpcEndpointConnectionNotification = AwsVpcEndpointConnectionNotificationOptional //\\ AwsVpcEndpointConnectionNotificationRequired

in
{ AwsVpcEndpointConnectionNotificationOptional = AwsVpcEndpointConnectionNotificationOptional
, AwsVpcEndpointConnectionNotificationRequired = AwsVpcEndpointConnectionNotificationRequired
, AwsVpcEndpointConnectionNotification = AwsVpcEndpointConnectionNotification
}
