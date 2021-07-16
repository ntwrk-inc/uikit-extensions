@testable import UIKitExtensions
import XCTest

final class UILayoutPriorityTests: XCTestCase {
    func testThatLayoutPriorityHasCorrectValues() {
        XCTAssertEqual(UILayoutPriority.almostRequired.rawValue, 999)
        XCTAssertEqual(UILayoutPriority.notRequired.rawValue, 0)
    }
}
