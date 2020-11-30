import XCTest
@testable import Snapped

final class SnappedTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Snapped().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
