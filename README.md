# TFC IP range checker

This repository contains code to automate checking the TFC IP Ranges API for changes/updates. 

# Overview
Many customers utilize their on-prem VCS providers with TFC and need to keep abreast of changes to the IPs used by TFC. This code is meant to be used in a TFC workspace which has drift detection (Health Assessments) enabled. A date (GMT) can be set as a variable to establish the lookback time frame. When drift detection looks for any changes on the API every 24 hours, workspace notfications can be leveraged to alert admins to pending updates.

# Resources
* https://developer.hashicorp.com/terraform/cloud-docs/api-docs/ip-ranges
* https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http
* https://developer.hashicorp.com/terraform/cloud-docs/workspaces/health
