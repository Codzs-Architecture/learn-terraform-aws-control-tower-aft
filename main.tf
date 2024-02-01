# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

module "aft" {
  source                      = "github.com/khaitan-nitin/terraform-aws-control_tower_account_factory"
  ct_management_account_id    = var.ct_management_account_id
  log_archive_account_id      = var.log_archive_account_id
  audit_account_id            = var.audit_account_id
  aft_management_account_id   = var.aft_management_account_id
  ct_home_region              = var.ct_home_region
  tf_backend_secondary_region = var.tf_backend_secondary_region

  vcs_provider                                  = "github"
  account_request_repo_name                     = "${var.github_username}/learn-terraform-aft-account-request"
  account_provisioning_customizations_repo_name = "${var.github_username}/learn-terraform-aft-account-provisioning-customizations"
  global_customizations_repo_name               = "${var.github_username}/learn-terraform-aft-global-customizations"
  account_customizations_repo_name              = "${var.github_username}/learn-terraform-aft-account-customizations"

  cloudwatch_log_group_retention                    = var.cloudwatch_log_group_retention
  aft_feature_disable_private_networking            = var.aft_feature_disable_private_networking
  aft_vpc_endpoints                                 = var.aft_vpc_endpoints
  aft_feature_cloudtrail_data_events                = var.aft_feature_cloudtrail_data_events
  aft_feature_delete_default_vpcs_enabled           = var.aft_feature_delete_default_vpcs_enabled
  aft_metrics_reporting                             = var.aft_metrics_reporting
  aft_feature_control_tower_dynamodb_backup_enabled = var.aft_feature_control_tower_dynamodb_backup_enabled
}
