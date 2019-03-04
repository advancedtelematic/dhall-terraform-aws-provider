
let AwsInstanceOptional =
  { associate_public_ip_address: Optional Bool
  , availability_zone: Optional Text
  , cpu_core_count: Optional Natural
  , cpu_threads_per_core: Optional Natural
  , disable_api_termination: Optional Bool
  , ebs_optimized: Optional Bool
  , get_password_data: Optional Bool
  , host_id: Optional Text
  , iam_instance_profile: Optional Text
  , instance_initiated_shutdown_behavior: Optional Text
  , ipv6_address_count: Optional Natural
  , ipv6_addresses: Optional (List Text)
  , key_name: Optional Text
  , monitoring: Optional Bool
  , placement_group: Optional Text
  , private_ip: Optional Text
  , security_groups: Optional (List Text)
  , source_dest_check: Optional Bool
  , subnet_id: Optional Text
  , tags: Optional ?? Map(String)
  , tenancy: Optional Text
  , user_data: Optional Text
  , user_data_base64: Optional Text
  , volume_tags: Optional ?? Map(String)
  , vpc_security_group_ids: Optional (List Text)
  }

let AwsInstanceRequired =
  { ami: Text
  , arn: Text
  , instance_state: Text
  , instance_type: Text
  , network_interface_id: Text
  , password_data: Text
  , primary_network_interface_id: Text
  , private_dns: Text
  , public_dns: Text
  , public_ip: Text
  }

in
  { AwsInstanceOptional = AwsInstanceOptional
  , AwsInstanceRequired= AwsInstanceRequired
  , AwsInstance = AwsInstanceOptional //\\ AwsInstanceRequired
  }
