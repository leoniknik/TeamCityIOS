git clean -fd
rm -rf ~/Library/Developer/Xcode/DerivedData/TeamCityTest
xcrun simctl erase all
pod install
# Unit tests
xcodebuild \
-scheme TeamCityUnit \
-workspace TeamCityTest.xcworkspace \
-destination "platform=iOS Simulator,name=iPhone 8,OS=11.2" \
-sdk iphonesimulator
