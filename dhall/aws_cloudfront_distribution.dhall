
let CookiesOptional =
  { whitelisted_names: Optional (List Text) }

let CookiesRequired =
  { forward: Text }
let Cookies = CookiesOptional //\\ CookiesRequired

let ForwardedValuesOptional =
  { headers: Optional (List Text)
  , query_string_cache_keys: Optional (List Text)
  }

let ForwardedValuesRequired =
  { query_string: Bool
  , cookies: Cookies
  }
let ForwardedValues = ForwardedValuesOptional //\\ ForwardedValuesRequired

let LambdaFunctionAssociationOptional =
  { include_body: Optional Bool }

let LambdaFunctionAssociationRequired =
  { event_type: Text
  , lambda_arn: Text
  }
let LambdaFunctionAssociation = LambdaFunctionAssociationOptional //\\ LambdaFunctionAssociationRequired

let CacheBehaviorOptional =
  { compress: Optional Bool
  , default_ttl: Optional Natural
  , field_level_encryption_id: Optional Text
  , max_ttl: Optional Natural
  , min_ttl: Optional Natural
  , smooth_streaming: Optional Bool
  , trusted_signers: Optional (List Text)
  , lambda_function_association: Optional (List LambdaFunctionAssociation)
  }

let CacheBehaviorRequired =
  { allowed_methods: (List Text)
  , cached_methods: (List Text)
  , path_pattern: Text
  , target_origin_id: Text
  , viewer_protocol_policy: Text
  , forwarded_values: ForwardedValues
  }
let CacheBehavior = CacheBehaviorOptional //\\ CacheBehaviorRequired

let CustomErrorResponseOptional =
  { error_caching_min_ttl: Optional Natural
  , response_code: Optional Natural
  , response_page_path: Optional Text
  }

let CustomErrorResponseRequired =
  { error_code: Natural }
let CustomErrorResponse = CustomErrorResponseOptional //\\ CustomErrorResponseRequired

let CookiesOptional =
  { whitelisted_names: Optional (List Text) }

let CookiesRequired =
  { forward: Text }
let Cookies = CookiesOptional //\\ CookiesRequired

let ForwardedValuesOptional =
  { headers: Optional (List Text)
  , query_string_cache_keys: Optional (List Text)
  }

let ForwardedValuesRequired =
  { query_string: Bool
  , cookies: Cookies
  }
let ForwardedValues = ForwardedValuesOptional //\\ ForwardedValuesRequired

let LambdaFunctionAssociationOptional =
  { include_body: Optional Bool }

let LambdaFunctionAssociationRequired =
  { event_type: Text
  , lambda_arn: Text
  }
let LambdaFunctionAssociation = LambdaFunctionAssociationOptional //\\ LambdaFunctionAssociationRequired

let DefaultCacheBehaviorOptional =
  { compress: Optional Bool
  , default_ttl: Optional Natural
  , field_level_encryption_id: Optional Text
  , max_ttl: Optional Natural
  , min_ttl: Optional Natural
  , smooth_streaming: Optional Bool
  , trusted_signers: Optional (List Text)
  , lambda_function_association: Optional (List LambdaFunctionAssociation)
  }

let DefaultCacheBehaviorRequired =
  { allowed_methods: (List Text)
  , cached_methods: (List Text)
  , target_origin_id: Text
  , viewer_protocol_policy: Text
  , forwarded_values: ForwardedValues
  }
let DefaultCacheBehavior = DefaultCacheBehaviorOptional //\\ DefaultCacheBehaviorRequired

let LoggingConfigOptional =
  { include_cookies: Optional Bool
  , prefix: Optional Text
  }

let LoggingConfigRequired =
  { bucket: Text }
let LoggingConfig = LoggingConfigOptional //\\ LoggingConfigRequired

let CookiesOptional =
  { whitelisted_names: Optional (List Text) }

let CookiesRequired =
  { forward: Text }
let Cookies = CookiesOptional //\\ CookiesRequired

let ForwardedValuesOptional =
  { headers: Optional (List Text)
  , query_string_cache_keys: Optional (List Text)
  }

let ForwardedValuesRequired =
  { query_string: Bool
  , cookies: Cookies
  }
let ForwardedValues = ForwardedValuesOptional //\\ ForwardedValuesRequired

let LambdaFunctionAssociationOptional =
  { include_body: Optional Bool }

let LambdaFunctionAssociationRequired =
  { event_type: Text
  , lambda_arn: Text
  }
let LambdaFunctionAssociation = LambdaFunctionAssociationOptional //\\ LambdaFunctionAssociationRequired

let OrderedCacheBehaviorOptional =
  { compress: Optional Bool
  , default_ttl: Optional Natural
  , field_level_encryption_id: Optional Text
  , max_ttl: Optional Natural
  , min_ttl: Optional Natural
  , smooth_streaming: Optional Bool
  , trusted_signers: Optional (List Text)
  , lambda_function_association: Optional (List LambdaFunctionAssociation)
  }

let OrderedCacheBehaviorRequired =
  { allowed_methods: (List Text)
  , cached_methods: (List Text)
  , path_pattern: Text
  , target_origin_id: Text
  , viewer_protocol_policy: Text
  , forwarded_values: ForwardedValues
  }
let OrderedCacheBehavior = OrderedCacheBehaviorOptional //\\ OrderedCacheBehaviorRequired

let CustomHeaderOptional = {}

let CustomHeaderRequired =
  { name: Text
  , value: Text
  }
let CustomHeader = CustomHeaderOptional //\\ CustomHeaderRequired

let CustomOriginConfigOptional =
  { origin_keepalive_timeout: Optional Natural
  , origin_read_timeout: Optional Natural
  }

let CustomOriginConfigRequired =
  { http_port: Natural
  , https_port: Natural
  , origin_protocol_policy: Text
  , origin_ssl_protocols: (List Text)
  }
let CustomOriginConfig = CustomOriginConfigOptional //\\ CustomOriginConfigRequired

let S3OriginConfigOptional = {}

let S3OriginConfigRequired =
  { origin_access_identity: Text }
let S3OriginConfig = S3OriginConfigOptional //\\ S3OriginConfigRequired

let OriginOptional =
  { origin_path: Optional Text
  , custom_header: Optional (List CustomHeader)
  , custom_origin_config: Optional CustomOriginConfig
  , s3_origin_config: Optional S3OriginConfig
  }

let OriginRequired =
  { domain_name: Text
  , origin_id: Text
  }
let Origin = OriginOptional //\\ OriginRequired

let GeoRestrictionOptional =
  { locations: Optional (List Text) }

let GeoRestrictionRequired =
  { restriction_type: Text }
let GeoRestriction = GeoRestrictionOptional //\\ GeoRestrictionRequired

let RestrictionsOptional = {}

let RestrictionsRequired =
  { geo_restriction: GeoRestriction }
let Restrictions = RestrictionsOptional //\\ RestrictionsRequired

let ViewerCertificateOptional =
  { acm_certificate_arn: Optional Text
  , cloudfront_default_certificate: Optional Bool
  , iam_certificate_id: Optional Text
  , minimum_protocol_version: Optional Text
  , ssl_support_method: Optional Text
  }

let ViewerCertificateRequired = {}
let ViewerCertificate = ViewerCertificateOptional //\\ ViewerCertificateRequired

let AwsCloudfrontDistributionOptional =
  { active_trusted_signers: Optional (List { mapKey : Text, mapValue : Text })
  , aliases: Optional (List Text)
  , arn: Optional Text
  , caller_reference: Optional Text
  , comment: Optional Text
  , default_root_object: Optional Text
  , domain_name: Optional Text
  , etag: Optional Text
  , hosted_zone_id: Optional Text
  , http_version: Optional Text
  , in_progress_validation_batches: Optional Natural
  , is_ipv6_enabled: Optional Bool
  , last_modified_time: Optional Text
  , price_class: Optional Text
  , retain_on_delete: Optional Bool
  , status: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , web_acl_id: Optional Text
  , cache_behavior: Optional (List CacheBehavior)
  , custom_error_response: Optional (List CustomErrorResponse)
  , logging_config: Optional LoggingConfig
  , ordered_cache_behavior: Optional (List OrderedCacheBehavior)
  }

let AwsCloudfrontDistributionRequired =
  { enabled: Bool
  , default_cache_behavior: DefaultCacheBehavior
  , origin: List Origin
  , restrictions: Restrictions
  , viewer_certificate: ViewerCertificate
  }
let AwsCloudfrontDistribution = AwsCloudfrontDistributionOptional //\\ AwsCloudfrontDistributionRequired

in
{ AwsCloudfrontDistributionOptional = AwsCloudfrontDistributionOptional
, AwsCloudfrontDistributionRequired = AwsCloudfrontDistributionRequired
, AwsCloudfrontDistribution = AwsCloudfrontDistribution
, ViewerCertificateOptional = ViewerCertificateOptional
, ViewerCertificateRequired = ViewerCertificateRequired
, ViewerCertificate = ViewerCertificate
, Restrictions = Restrictions
, GeoRestrictionOptional = GeoRestrictionOptional
, GeoRestrictionRequired = GeoRestrictionRequired
, GeoRestriction = GeoRestriction
, OriginOptional = OriginOptional
, OriginRequired = OriginRequired
, Origin = Origin
, S3OriginConfig = S3OriginConfig
, CustomOriginConfigOptional = CustomOriginConfigOptional
, CustomOriginConfigRequired = CustomOriginConfigRequired
, CustomOriginConfig = CustomOriginConfig
, CustomHeader = CustomHeader
, OrderedCacheBehaviorOptional = OrderedCacheBehaviorOptional
, OrderedCacheBehaviorRequired = OrderedCacheBehaviorRequired
, OrderedCacheBehavior = OrderedCacheBehavior
, LambdaFunctionAssociationOptional = LambdaFunctionAssociationOptional
, LambdaFunctionAssociationRequired = LambdaFunctionAssociationRequired
, LambdaFunctionAssociation = LambdaFunctionAssociation
, ForwardedValuesOptional = ForwardedValuesOptional
, ForwardedValuesRequired = ForwardedValuesRequired
, ForwardedValues = ForwardedValues
, CookiesOptional = CookiesOptional
, CookiesRequired = CookiesRequired
, Cookies = Cookies
, LoggingConfigOptional = LoggingConfigOptional
, LoggingConfigRequired = LoggingConfigRequired
, LoggingConfig = LoggingConfig
, DefaultCacheBehaviorOptional = DefaultCacheBehaviorOptional
, DefaultCacheBehaviorRequired = DefaultCacheBehaviorRequired
, DefaultCacheBehavior = DefaultCacheBehavior
, LambdaFunctionAssociationOptional = LambdaFunctionAssociationOptional
, LambdaFunctionAssociationRequired = LambdaFunctionAssociationRequired
, LambdaFunctionAssociation = LambdaFunctionAssociation
, ForwardedValuesOptional = ForwardedValuesOptional
, ForwardedValuesRequired = ForwardedValuesRequired
, ForwardedValues = ForwardedValues
, CookiesOptional = CookiesOptional
, CookiesRequired = CookiesRequired
, Cookies = Cookies
, CustomErrorResponseOptional = CustomErrorResponseOptional
, CustomErrorResponseRequired = CustomErrorResponseRequired
, CustomErrorResponse = CustomErrorResponse
, CacheBehaviorOptional = CacheBehaviorOptional
, CacheBehaviorRequired = CacheBehaviorRequired
, CacheBehavior = CacheBehavior
, LambdaFunctionAssociationOptional = LambdaFunctionAssociationOptional
, LambdaFunctionAssociationRequired = LambdaFunctionAssociationRequired
, LambdaFunctionAssociation = LambdaFunctionAssociation
, ForwardedValuesOptional = ForwardedValuesOptional
, ForwardedValuesRequired = ForwardedValuesRequired
, ForwardedValues = ForwardedValues
, CookiesOptional = CookiesOptional
, CookiesRequired = CookiesRequired
, Cookies = Cookies
}
