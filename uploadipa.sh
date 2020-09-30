cd ios

xcodebuild clean  -project MyHelloApp.xcodeproj -scheme MyHelloApp

xcodebuild -workspace MyHelloApp.xcworkspace -scheme MyHelloApp -destination generic/platform=iOS build   

xcodebuild -workspace MyHelloApp.xcworkspace -scheme MyHelloApp -sdk iphoneos -configuration AppStoreDistribution archive -archivePath $PWD/build/MyHelloApp.xcarchive

xcodebuild -exportArchive -archivePath $PWD/build/MyHelloApp.xcarchive -exportOptionsPlist exportOptions.plist -exportPath $PWD/build

xcrun "$ALTOOL" --validate-app  -f "$IPA_PATH" -u "info@beyond.ws" -p "prwg-sxvs-lyvd-ufnd"

xcrun "$ALTOOL" --upload-app  -f "$IPA_PATH" -u "info@beyond.ws" -p "prwg-sxvs-lyvd-ufnd"