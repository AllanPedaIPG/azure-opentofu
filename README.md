# azure-opentofu
Scripts and notes pertaining to Azure and OpenTofu (fork of Terraform)

Introduction:
To set up the needed environment run the following:

eval "$(bash create_sp)"

This creates a service principle and populates the shell environment with credentials used in the next steps.

You can view what was created:

set | grep '^ARM_'