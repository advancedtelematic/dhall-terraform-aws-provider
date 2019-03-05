
let FilterOptional =
  { prefix: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let FilterRequired = {}
let Filter = FilterOptional //\\ FilterRequired

let AwsS3BucketMetricOptional =
  { filter: Optional Filter }

let AwsS3BucketMetricRequired =
  { bucket: Text
  , name: Text
  }
let AwsS3BucketMetric = AwsS3BucketMetricOptional //\\ AwsS3BucketMetricRequired

in
{ AwsS3BucketMetricOptional = AwsS3BucketMetricOptional
, AwsS3BucketMetricRequired = AwsS3BucketMetricRequired
, AwsS3BucketMetric = AwsS3BucketMetric
, FilterOptional = FilterOptional
, FilterRequired = FilterRequired
, Filter = Filter
}
