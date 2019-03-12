
let IngestEndpointsOptional =
  { password : Optional Text }

let IngestEndpointsRequired = {}
let IngestEndpoints = IngestEndpointsOptional //\\ IngestEndpointsRequired

let HlsIngestOptional =
  { ingest_endpoints : Optional (List IngestEndpoints) }

let HlsIngestRequired = {}
let HlsIngest = HlsIngestOptional //\\ HlsIngestRequired

let AwsMediaPackageChannelOptional =
  { description : Optional Text
  , hls_ingest : Optional (List HlsIngest)
  }

let AwsMediaPackageChannelRequired =
  { channel_id : Text }
let AwsMediaPackageChannel = AwsMediaPackageChannelOptional //\\ AwsMediaPackageChannelRequired

in
{ AwsMediaPackageChannelOptional = AwsMediaPackageChannelOptional
, AwsMediaPackageChannelRequired = AwsMediaPackageChannelRequired
, AwsMediaPackageChannel = AwsMediaPackageChannel
, HlsIngestOptional = HlsIngestOptional
, HlsIngestRequired = HlsIngestRequired
, HlsIngest = HlsIngest
, IngestEndpointsOptional = IngestEndpointsOptional
, IngestEndpointsRequired = IngestEndpointsRequired
, IngestEndpoints = IngestEndpoints
}
