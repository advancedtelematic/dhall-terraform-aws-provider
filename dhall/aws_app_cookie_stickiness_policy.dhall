
let AwsAppCookieStickinessPolicyOptional = {}

let AwsAppCookieStickinessPolicyRequired =
  { cookie_name : Text
  , lb_port : Natural
  , load_balancer : Text
  , name : Text
  }
let AwsAppCookieStickinessPolicy = AwsAppCookieStickinessPolicyOptional //\\ AwsAppCookieStickinessPolicyRequired

in
{ AwsAppCookieStickinessPolicy = AwsAppCookieStickinessPolicy
}
