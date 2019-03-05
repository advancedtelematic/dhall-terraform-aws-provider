
let AwsLbCookieStickinessPolicyOptional =
  { cookie_expiration_period: Optional Natural }

let AwsLbCookieStickinessPolicyRequired =
  { lb_port: Natural
  , load_balancer: Text
  , name: Text
  }
let AwsLbCookieStickinessPolicy = AwsLbCookieStickinessPolicyOptional //\\ AwsLbCookieStickinessPolicyRequired

in
{ AwsLbCookieStickinessPolicyOptional = AwsLbCookieStickinessPolicyOptional
, AwsLbCookieStickinessPolicyRequired = AwsLbCookieStickinessPolicyRequired
, AwsLbCookieStickinessPolicy = AwsLbCookieStickinessPolicy
}
