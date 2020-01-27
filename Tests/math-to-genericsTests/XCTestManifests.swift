import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
  return [
    testCase(math_to_genericsTests.allTests),
  ]
}
#endif
