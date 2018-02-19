git clean -fd
rm -rf ~/Library/Developer/Xcode/DerivedData/TeamCityTest
xcrun simctl erase all
pod install
# Unit tests
xctool \
-scheme TeamCityTestUITests \
-workspace TeamCityTest.xcworkspace \
-destination "platform=iOS Simulator,name=iPhone 8,OS=11.2" \
-sdk iphonesimulator \
-reporter junit:test-results/TEST-UnitTests.xml \
-reporter pretty
