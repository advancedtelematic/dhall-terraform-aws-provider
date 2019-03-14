
let awsVolumeAttachment =
  { force_detach = None Bool
  , skip_destroy = None Bool
  }

in
{ awsVolumeAttachment = awsVolumeAttachment
}
