import XCTest
@testable import CatFactPackage

final class CatFactPackageTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CatFactPackage().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}