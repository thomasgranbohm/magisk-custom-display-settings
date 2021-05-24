#!/bin/bash

pushd app
aapt package -M AndroidManifest.xml -S res/ \
  -I "$HOME/android-9/android.jar" \
  -F CustomDisplaySettings.apk || exit 1

mv CustomDisplaySettings.apk ..
popd

pushd magisk
mv ../CustomDisplaySettings.apk system/vendor/overlay/CustomDisplaySettings/

find -exec touch -d @0 -h {} +
find -type d -exec chmod 0755 {} +
find -type f -exec chmod 0644 {} +

version=$(grep -Po "version=\K.*" module.prop)
zip -r -y -9 ../custom-display-settings-$version.zip . || exit 1
popd
