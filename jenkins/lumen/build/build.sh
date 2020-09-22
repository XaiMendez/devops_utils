#!/bin/bash

echo "*********************"
echo "*** Building ***"
echo "*********************"

echo $APP_NAME

APP_WORKSPACE=$APP_WORKSPACE
WORKSPACE_DEVOPS_UTILS=/var/jenkins_home/workspace/devops_utils



sed -e "s/\${APP_NAME}/$APP_NAME/" \
$WORKSPACE_DEVOPS_UTILS/docker/nginx/sites/lumen-app.conf > docker/nginx/sites/$APP_NAME.conf