
let cookies =
  { whitelisted_names = None (List Text) }

let forwardedValues =
  { headers = None (List Text)
  , query_string_cache_keys = None (List Text)
  }

let lambdaFunctionAssociation =
  { include_body = None Bool }

let cacheBehavior =
  { compress = None Bool
  , default_ttl = None Natural
  , field_level_encryption_id = None Text
  , max_ttl = None Natural
  , min_ttl = None Natural
  , smooth_streaming = None Bool
  , trusted_signers = None (List Text)
  , lambda_function_association = None (List (../dhall/aws_cloudfront_distribution.dhall).LambdaFunctionAssociation)
  }

let customErrorResponse =
  { error_caching_min_ttl = None Natural
  , response_code = None Natural
  , response_page_path = None Text
  }

let cookies =
  { whitelisted_names = None (List Text) }

let forwardedValues =
  { headers = None (List Text)
  , query_string_cache_keys = None (List Text)
  }

let lambdaFunctionAssociation =
  { include_body = None Bool }

let defaultCacheBehavior =
  { compress = None Bool
  , default_ttl = None Natural
  , field_level_encryption_id = None Text
  , max_ttl = None Natural
  , min_ttl = None Natural
  , smooth_streaming = None Bool
  , trusted_signers = None (List Text)
  , lambda_function_association = None (List (../dhall/aws_cloudfront_distribution.dhall).LambdaFunctionAssociation)
  }

let loggingConfig =
  { include_cookies = None Bool
  , prefix = None Text
  }

let cookies =
  { whitelisted_names = None (List Text) }

let forwardedValues =
  { headers = None (List Text)
  , query_string_cache_keys = None (List Text)
  }

let lambdaFunctionAssociation =
  { include_body = None Bool }

let orderedCacheBehavior =
  { compress = None Bool
  , default_ttl = None Natural
  , field_level_encryption_id = None Text
  , max_ttl = None Natural
  , min_ttl = None Natural
  , smooth_streaming = None Bool
  , trusted_signers = None (List Text)
  , lambda_function_association = None (List (../dhall/aws_cloudfront_distribution.dhall).LambdaFunctionAssociation)
  }

let customHeader = {}

let customOriginConfig =
  { origin_keepalive_timeout = None Natural
  , origin_read_timeout = None Natural
  }

let s3OriginConfig = {}

let origin =
  { origin_path = None Text
  , custom_header = None (List (../dhall/aws_cloudfront_distribution.dhall).CustomHeader)
  , custom_origin_config = None (../dhall/aws_cloudfront_distribution.dhall).CustomOriginConfig
  , s3_origin_config = None (../dhall/aws_cloudfront_distribution.dhall).S3OriginConfig
  }

let geoRestriction =
  { locations = None (List Text) }

let restrictions = {}

let viewerCertificate =
  { acm_certificate_arn = None Text
  , cloudfront_default_certificate = None Bool
  , iam_certificate_id = None Text
  , minimum_protocol_version = None Text
  , ssl_support_method = None Text
  }

let awsCloudfrontDistribution =
  { aliases = None (List Text)
  , comment = None Text
  , default_root_object = None Text
  , http_version = None Text
  , is_ipv6_enabled = None Bool
  , price_class = None Text
  , retain_on_delete = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  , web_acl_id = None Text
  , cache_behavior = None (List (../dhall/aws_cloudfront_distribution.dhall).CacheBehavior)
  , custom_error_response = None (List (../dhall/aws_cloudfront_distribution.dhall).CustomErrorResponse)
  , logging_config = None (../dhall/aws_cloudfront_distribution.dhall).LoggingConfig
  , ordered_cache_behavior = None (List (../dhall/aws_cloudfront_distribution.dhall).OrderedCacheBehavior)
  }

in
{ awsCloudfrontDistribution = awsCloudfrontDistribution
, viewerCertificate = viewerCertificate
, geoRestriction = geoRestriction
, origin = origin
, customOriginConfig = customOriginConfig
, orderedCacheBehavior = orderedCacheBehavior
, lambdaFunctionAssociation = lambdaFunctionAssociation
, forwardedValues = forwardedValues
, cookies = cookies
, loggingConfig = loggingConfig
, defaultCacheBehavior = defaultCacheBehavior
, lambdaFunctionAssociation = lambdaFunctionAssociation
, forwardedValues = forwardedValues
, cookies = cookies
, customErrorResponse = customErrorResponse
, cacheBehavior = cacheBehavior
, lambdaFunctionAssociation = lambdaFunctionAssociation
, forwardedValues = forwardedValues
, cookies = cookies
}
