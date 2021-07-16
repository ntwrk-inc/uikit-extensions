@testable import UIKitExtensions
import XCTest

final class UIEdgeInsetsTests: XCTestCase {
    func testThatAllEdgesHaveASettedValue() {
        let inset = UIEdgeInsets.all(15)
        let result = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
        XCTAssertEqual(inset, result)
    }

    func testThatHorizontalEdgesHaveASettedValue() {
        let inset = UIEdgeInsets.horizonral(15)
        let result = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
        XCTAssertEqual(inset, result)
    }

    func testThatVerticalEdgesHaveASettedValue() {
        let inset = UIEdgeInsets.vertical(15)
        let result = UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 0)
        XCTAssertEqual(inset, result)
    }
}
