
let ingestEndpoints =
  { password = None Text }

let hlsIngest =
  { ingest_endpoints = None (List (../dhall/aws_media_package_channel.dhall).IngestEndpoints) }

let awsMediaPackageChannel =
  { description = None Text
  , hls_ingest = None (List (../dhall/aws_media_package_channel.dhall).HlsIngest)
  }

in
{ awsMediaPackageChannel = awsMediaPackageChannel
, hlsIngest = hlsIngest
, ingestEndpoints = ingestEndpoints
}
