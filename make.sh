#!/bin/bash

echo "terraforming in profile: $2"

if [ $1 = "apply" ]
then
  echo "Applying..."
  terraform apply -var="profile=$2"
elif [ $1 = "destroy" ]
then
  echo "Destroying..."
  terraform destroy -var="profile=$2"
fi