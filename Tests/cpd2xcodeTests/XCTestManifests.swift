import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(cpd2xcodeTests.allTests),
    ]
}
#endif
