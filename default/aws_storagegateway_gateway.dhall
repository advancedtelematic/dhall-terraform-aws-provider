
let smbActiveDirectorySettings = {}

let awsStoragegatewayGateway =
  { activation_key = None Text
  , gateway_ip_address = None Text
  , gateway_type = None Text
  , medium_changer_type = None Text
  , smb_guest_password = None Text
  , tape_drive_type = None Text
  , smb_active_directory_settings = None (../dhall/aws_storagegateway_gateway.dhall).SmbActiveDirectorySettings
  }

in
{ awsStoragegatewayGateway = awsStoragegatewayGateway
}
