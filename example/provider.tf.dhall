{ provider =
  { aws =
    { region = "us-east-1"
    , skip_credentials_validation = True
    , skip_requesting_account_id  = True
    , skip_metadata_api_check     = True
    , s3_force_path_style         = True
    , access_key                  = "mock_access_key"
    , secret_key                  = "mock_secret_key"
    }
  }
}
