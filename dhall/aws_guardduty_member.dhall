
let AwsGuarddutyMemberOptional =
  { disable_email_notification: Optional Bool
  , invitation_message: Optional Text
  , invite: Optional Bool
  }

let AwsGuarddutyMemberRequired =
  { account_id: Text
  , detector_id: Text
  , email: Text
  }
let AwsGuarddutyMember = AwsGuarddutyMemberOptional //\\ AwsGuarddutyMemberRequired

in
{ AwsGuarddutyMemberOptional = AwsGuarddutyMemberOptional
, AwsGuarddutyMemberRequired = AwsGuarddutyMemberRequired
, AwsGuarddutyMember = AwsGuarddutyMember
}
