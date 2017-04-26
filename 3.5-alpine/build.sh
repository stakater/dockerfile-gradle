#!/bin/bash
_gradle_version=$1
_gradle_tag=$2
_release_build=false

if [ -z "${_gradle_version}" ]; then
	source GRADLE_VERSION
	_gradle_version=$GRADLE_VERSION
	_gradle_tag=${GRADLE_VERSION}-alpine
	_release_build=true
fi

echo "GRADLE_VERSION: ${_gradle_version}"
echo "DOCKER TAG: ${_gradle_tag}"
echo "RELEASE BUILD: ${_release_build}"

docker build --build-arg GRADLE_VERSION=${_gradle_version} --tag "stakater/gradle:${_gradle_tag}"  --no-cache=true .

if [ $_release_build == true ]; then
	docker tag "stakater/gradle:${_gradle_tag}" "stakater/gradle:latest"
fi