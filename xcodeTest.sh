#!/bin/bash
cd tvTwo
xcodebuild clean build -project tvTwo.xcodeproj -scheme tvTwo CODE_SIGNING_REQUIRED=NO -destination 'platform=iOS Simulator,name=iPhone X,OS=12.0' -quiet
xcodebuild test -project tvTwo.xcodeproj -scheme tvTwo -destination 'platform=iOS Simulator,name=iPhone X,OS=12.0'  -enableCodeCoverage  YES -quiet
