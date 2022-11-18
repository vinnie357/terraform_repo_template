#!/bin/bash
function packerBuild {
# packerBuild gcpfleet -force
FORCE=${2:-''}
TARGET=${1:-"gcpfleet"}
packer init ${TARGET}.pkr.hcl
packer fmt .
packer validate -var-file=${TARGET}.auto.pkrvars.hcl ${TARGET}.pkr.hcl
packer build ${FORCE} -var-file=${TARGET}.auto.pkrvars.hcl ${TARGET}.pkr.hcl
}
