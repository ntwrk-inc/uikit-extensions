import UIKit

/// A property wrapper type that can enable autolayout.
///
/// The property wrapper change `translatesAutoresizingMaskIntoConstraints`
/// property of the view to false.
///
///     class ViewController: UIViewController {
///         @UsesAutoLayout var label = UILabel()
///     }
@propertyWrapper
public struct UsesAutoLayout<T: UIView> {
    // MARK: Lifecycle

    public init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
        wrappedValue.translatesAutoresizingMaskIntoConstraints = false
    }

    // MARK: Public

    public var wrappedValue: T {
        didSet {
            wrappedValue.translatesAutoresizingMaskIntoConstraints = false
        }
    }
}
