#!/bin/sh
set -euxo pipefail

test -n $UNITY_BIN

curl --location --output /tmp/GoogleMobileAds-v8.0.0.unitypackage 'https://github.com/googleads/googleads-mobile-unity/releases/download/v8.0.0/GoogleMobileAds-v8.0.0.unitypackage'

$UNITY_BIN \
  -gvh_disable \
  -batchmode \
  -importPackage /tmp/GoogleMobileAds-v8.0.0.unitypackage \
  -projectPath . \
  -quit

curl --location --output /tmp/GoogleMobileAdsMediationFluct.unitypackage 'https://github.com/voyagegroup/GoogleMobileAdsMediationFluct-Unity/releases/download/20230417/GoogleMobileAdsMediationFluct.unitypackage'

$UNITY_BIN \
  -gvh_disable \
  -batchmode \
  -importPackage /tmp/GoogleMobileAdsMediationFluct.unitypackage \
  -projectPath . \
  -quit
