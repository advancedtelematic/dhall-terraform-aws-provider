
let InviteMessageTemplateOptional =
  { email_message: Optional Text
  , email_subject: Optional Text
  , sms_message: Optional Text
  }

let InviteMessageTemplateRequired = {}
let InviteMessageTemplate = InviteMessageTemplateOptional //\\ InviteMessageTemplateRequired

let AdminCreateUserConfigOptional =
  { allow_admin_create_user_only: Optional Bool
  , unused_account_validity_days: Optional Natural
  , invite_message_template: Optional InviteMessageTemplate
  }

let AdminCreateUserConfigRequired = {}
let AdminCreateUserConfig = AdminCreateUserConfigOptional //\\ AdminCreateUserConfigRequired

let DeviceConfigurationOptional =
  { challenge_required_on_new_device: Optional Bool
  , device_only_remembered_on_user_prompt: Optional Bool
  }

let DeviceConfigurationRequired = {}
let DeviceConfiguration = DeviceConfigurationOptional //\\ DeviceConfigurationRequired

let EmailConfigurationOptional =
  { reply_to_email_address: Optional Text
  , source_arn: Optional Text
  }

let EmailConfigurationRequired = {}
let EmailConfiguration = EmailConfigurationOptional //\\ EmailConfigurationRequired

let LambdaConfigOptional =
  { create_auth_challenge: Optional Text
  , custom_message: Optional Text
  , define_auth_challenge: Optional Text
  , post_authentication: Optional Text
  , post_confirmation: Optional Text
  , pre_authentication: Optional Text
  , pre_sign_up: Optional Text
  , pre_token_generation: Optional Text
  , user_migration: Optional Text
  , verify_auth_challenge_response: Optional Text
  }

let LambdaConfigRequired = {}
let LambdaConfig = LambdaConfigOptional //\\ LambdaConfigRequired

let PasswordPolicyOptional =
  { minimum_length: Optional Natural
  , require_lowercase: Optional Bool
  , require_numbers: Optional Bool
  , require_symbols: Optional Bool
  , require_uppercase: Optional Bool
  }

let PasswordPolicyRequired = {}
let PasswordPolicy = PasswordPolicyOptional //\\ PasswordPolicyRequired

let NumberAttributeConstraintsOptional =
  { max_value: Optional Text
  , min_value: Optional Text
  }

let NumberAttributeConstraintsRequired = {}
let NumberAttributeConstraints = NumberAttributeConstraintsOptional //\\ NumberAttributeConstraintsRequired

let StringAttributeConstraintsOptional =
  { max_length: Optional Text
  , min_length: Optional Text
  }

let StringAttributeConstraintsRequired = {}
let StringAttributeConstraints = StringAttributeConstraintsOptional //\\ StringAttributeConstraintsRequired

let SchemaOptional =
  { developer_only_attribute: Optional Bool
  , mutable: Optional Bool
  , required: Optional Bool
  , number_attribute_constraints: Optional NumberAttributeConstraints
  , string_attribute_constraints: Optional StringAttributeConstraints
  }

let SchemaRequired =
  { attribute_data_type: Text
  , name: Text
  }
let Schema = SchemaOptional //\\ SchemaRequired

let SmsConfigurationOptional = {}

let SmsConfigurationRequired =
  { external_id: Text
  , sns_caller_arn: Text
  }
let SmsConfiguration = SmsConfigurationOptional //\\ SmsConfigurationRequired

let UserPoolAddOnsOptional = {}

let UserPoolAddOnsRequired =
  { advanced_security_mode: Text }
let UserPoolAddOns = UserPoolAddOnsOptional //\\ UserPoolAddOnsRequired

let VerificationMessageTemplateOptional =
  { default_email_option: Optional Text
  , email_message: Optional Text
  , email_message_by_link: Optional Text
  , email_subject: Optional Text
  , email_subject_by_link: Optional Text
  , sms_message: Optional Text
  }

let VerificationMessageTemplateRequired = {}
let VerificationMessageTemplate = VerificationMessageTemplateOptional //\\ VerificationMessageTemplateRequired

let AwsCognitoUserPoolOptional =
  { alias_attributes: Optional (List Text)
  , auto_verified_attributes: Optional (List Text)
  , email_verification_message: Optional Text
  , email_verification_subject: Optional Text
  , mfa_configuration: Optional Text
  , sms_authentication_message: Optional Text
  , sms_verification_message: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , username_attributes: Optional (List Text)
  , admin_create_user_config: Optional AdminCreateUserConfig
  , device_configuration: Optional DeviceConfiguration
  , email_configuration: Optional EmailConfiguration
  , lambda_config: Optional LambdaConfig
  , password_policy: Optional PasswordPolicy
  , sms_configuration: Optional SmsConfiguration
  , user_pool_add_ons: Optional UserPoolAddOns
  , verification_message_template: Optional VerificationMessageTemplate
  }

let AwsCognitoUserPoolRequired =
  { name: Text
  , schema: List Schema
  }
let AwsCognitoUserPool = AwsCognitoUserPoolOptional //\\ AwsCognitoUserPoolRequired

in
{ AwsCognitoUserPoolOptional = AwsCognitoUserPoolOptional
, AwsCognitoUserPoolRequired = AwsCognitoUserPoolRequired
, AwsCognitoUserPool = AwsCognitoUserPool
, VerificationMessageTemplateOptional = VerificationMessageTemplateOptional
, VerificationMessageTemplateRequired = VerificationMessageTemplateRequired
, VerificationMessageTemplate = VerificationMessageTemplate
, UserPoolAddOns = UserPoolAddOns
, SmsConfiguration = SmsConfiguration
, SchemaOptional = SchemaOptional
, SchemaRequired = SchemaRequired
, Schema = Schema
, StringAttributeConstraintsOptional = StringAttributeConstraintsOptional
, StringAttributeConstraintsRequired = StringAttributeConstraintsRequired
, StringAttributeConstraints = StringAttributeConstraints
, NumberAttributeConstraintsOptional = NumberAttributeConstraintsOptional
, NumberAttributeConstraintsRequired = NumberAttributeConstraintsRequired
, NumberAttributeConstraints = NumberAttributeConstraints
, PasswordPolicyOptional = PasswordPolicyOptional
, PasswordPolicyRequired = PasswordPolicyRequired
, PasswordPolicy = PasswordPolicy
, LambdaConfigOptional = LambdaConfigOptional
, LambdaConfigRequired = LambdaConfigRequired
, LambdaConfig = LambdaConfig
, EmailConfigurationOptional = EmailConfigurationOptional
, EmailConfigurationRequired = EmailConfigurationRequired
, EmailConfiguration = EmailConfiguration
, DeviceConfigurationOptional = DeviceConfigurationOptional
, DeviceConfigurationRequired = DeviceConfigurationRequired
, DeviceConfiguration = DeviceConfiguration
, AdminCreateUserConfigOptional = AdminCreateUserConfigOptional
, AdminCreateUserConfigRequired = AdminCreateUserConfigRequired
, AdminCreateUserConfig = AdminCreateUserConfig
, InviteMessageTemplateOptional = InviteMessageTemplateOptional
, InviteMessageTemplateRequired = InviteMessageTemplateRequired
, InviteMessageTemplate = InviteMessageTemplate
}
