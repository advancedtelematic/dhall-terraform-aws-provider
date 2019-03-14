
let awsGuarddutyMember =
  { disable_email_notification = None Bool
  , invitation_message = None Text
  , invite = None Bool
  }

in
{ awsGuarddutyMember = awsGuarddutyMember
}
