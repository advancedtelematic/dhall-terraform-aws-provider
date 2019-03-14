
let inviteMessageTemplate =
  { email_message = None Text
  , email_subject = None Text
  , sms_message = None Text
  }

let adminCreateUserConfig =
  { allow_admin_create_user_only = None Bool
  , unused_account_validity_days = None Natural
  , invite_message_template = None (../dhall/aws_cognito_user_pool.dhall).InviteMessageTemplate
  }

let deviceConfiguration =
  { challenge_required_on_new_device = None Bool
  , device_only_remembered_on_user_prompt = None Bool
  }

let emailConfiguration =
  { reply_to_email_address = None Text
  , source_arn = None Text
  }

let lambdaConfig =
  { create_auth_challenge = None Text
  , custom_message = None Text
  , define_auth_challenge = None Text
  , post_authentication = None Text
  , post_confirmation = None Text
  , pre_authentication = None Text
  , pre_sign_up = None Text
  , pre_token_generation = None Text
  , user_migration = None Text
  , verify_auth_challenge_response = None Text
  }

let passwordPolicy =
  { minimum_length = None Natural
  , require_lowercase = None Bool
  , require_numbers = None Bool
  , require_symbols = None Bool
  , require_uppercase = None Bool
  }

let numberAttributeConstraints =
  { max_value = None Text
  , min_value = None Text
  }

let stringAttributeConstraints =
  { max_length = None Text
  , min_length = None Text
  }

let schema =
  { developer_only_attribute = None Bool
  , mutable = None Bool
  , required = None Bool
  , number_attribute_constraints = None (../dhall/aws_cognito_user_pool.dhall).NumberAttributeConstraints
  , string_attribute_constraints = None (../dhall/aws_cognito_user_pool.dhall).StringAttributeConstraints
  }

let smsConfiguration = {}

let userPoolAddOns = {}

let verificationMessageTemplate =
  { default_email_option = None Text
  , email_message = None Text
  , email_message_by_link = None Text
  , email_subject = None Text
  , email_subject_by_link = None Text
  , sms_message = None Text
  }

let awsCognitoUserPool =
  { alias_attributes = None (List Text)
  , auto_verified_attributes = None (List Text)
  , email_verification_message = None Text
  , email_verification_subject = None Text
  , mfa_configuration = None Text
  , sms_authentication_message = None Text
  , sms_verification_message = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , username_attributes = None (List Text)
  , admin_create_user_config = None (../dhall/aws_cognito_user_pool.dhall).AdminCreateUserConfig
  , device_configuration = None (../dhall/aws_cognito_user_pool.dhall).DeviceConfiguration
  , email_configuration = None (../dhall/aws_cognito_user_pool.dhall).EmailConfiguration
  , lambda_config = None (../dhall/aws_cognito_user_pool.dhall).LambdaConfig
  , password_policy = None (../dhall/aws_cognito_user_pool.dhall).PasswordPolicy
  , sms_configuration = None (../dhall/aws_cognito_user_pool.dhall).SmsConfiguration
  , user_pool_add_ons = None (../dhall/aws_cognito_user_pool.dhall).UserPoolAddOns
  , verification_message_template = None (../dhall/aws_cognito_user_pool.dhall).VerificationMessageTemplate
  }

in
{ awsCognitoUserPool = awsCognitoUserPool
, verificationMessageTemplate = verificationMessageTemplate
, schema = schema
, stringAttributeConstraints = stringAttributeConstraints
, numberAttributeConstraints = numberAttributeConstraints
, passwordPolicy = passwordPolicy
, lambdaConfig = lambdaConfig
, emailConfiguration = emailConfiguration
, deviceConfiguration = deviceConfiguration
, adminCreateUserConfig = adminCreateUserConfig
, inviteMessageTemplate = inviteMessageTemplate
}
