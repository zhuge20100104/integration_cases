#!/bin/bash

export TN_ARTIFACT_CACHE_DIR=/home/fredric/.cache/telenav/v2/IntegrationTest-linux-ubuntu-18041-1.0.0+6dc59e87/linux-ubuntu-1804
export TN_ARTIFACT_PUBLISH_URL=https://artifactory.telenav.com/telenav-ivy-preprod/v2/tips/Test
export TN_ARTIFACT_PUBLISH_VERSION=3
export TN_BUILD_ID=41957c5e1b7b409c3738ffa1beaad2f1
export TN_BUILD_TIMESTAMP=2023-01-04T18:14:44-0800
export TN_JOB_TYPE=nightly
export TN_PLATFORM_NAME=linux-ubuntu-1804
export TN_BRANCH_NAME=develop
export TN_REPO_PATH=TIPS-New/verification
# Can't get this user name and password from jenkins
export TN_ARTIFACTORY_USER=
export TN_ARTIFACTORY_PASSWORD=




sudo ./tn --verbose --use-semver integrate --platform=linux-ubuntu-1804 --type=nightly
sudo ./tn publish -t linux-ubuntu-1804 --dest  https://artifactory.telenav.com/telenav-ivy-preprod/v2/tips/Test

