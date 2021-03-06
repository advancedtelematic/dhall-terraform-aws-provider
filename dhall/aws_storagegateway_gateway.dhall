
let SmbActiveDirectorySettingsOptional = {}

let SmbActiveDirectorySettingsRequired =
  { domain_name : Text
  , password : Text
  , username : Text
  }
let SmbActiveDirectorySettings = SmbActiveDirectorySettingsOptional //\\ SmbActiveDirectorySettingsRequired

let AwsStoragegatewayGatewayOptional =
  { activation_key : Optional Text
  , gateway_ip_address : Optional Text
  , gateway_type : Optional Text
  , medium_changer_type : Optional Text
  , smb_guest_password : Optional Text
  , tape_drive_type : Optional Text
  , smb_active_directory_settings : Optional SmbActiveDirectorySettings
  }

let AwsStoragegatewayGatewayRequired =
  { gateway_name : Text
  , gateway_timezone : Text
  }
let AwsStoragegatewayGateway = AwsStoragegatewayGatewayOptional //\\ AwsStoragegatewayGatewayRequired

in
{ AwsStoragegatewayGatewayOptional = AwsStoragegatewayGatewayOptional
, AwsStoragegatewayGatewayRequired = AwsStoragegatewayGatewayRequired
, AwsStoragegatewayGateway = AwsStoragegatewayGateway
, SmbActiveDirectorySettings = SmbActiveDirectorySettings
}
