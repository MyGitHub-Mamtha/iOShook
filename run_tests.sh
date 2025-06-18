#!/bin/bash echo "🔍 Running unit tests..."
xcodebuild \
  -scheme "IPC" \
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone 16' \
  clean test | xcpretty
if [ ${PIPESTATUS[0]} -ne 0 ]; then echo "❌ Unit tests failed!"exit 1 else echo "✅ All tests passed."exit 0 
fi 