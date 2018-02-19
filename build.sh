# Clean repository, DerivedData folder and simulator
rm -rf ~/Library/Developer/Xcode/DerivedData/TeamCityTest
xcrun simctl erase all
# Unit tests
xctool
-scheme TeamCityTestUITests
-workspace TeamCiryTest.xcworkspace
-destination "platform=iOS Simulator,name=iPhone 8,OS=10.0"
-sdk iphonesimulator \
-reporter junit:test-results/TEST-UnitTests.xml
-reporter pretty
clean test
