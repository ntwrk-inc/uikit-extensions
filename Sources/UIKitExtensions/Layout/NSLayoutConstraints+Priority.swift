import class UIKit.NSLayoutConstraint
import struct UIKit.UILayoutPriority

public extension NSLayoutConstraint {
    /// Returns the constraint sender with the passed priority.
    ///
    /// - Parameter priority: The priority to be set.
    ///
    /// - Returns: The sended constraint adjusted with the new priority.
    func usingPriority(_ priority: UILayoutPriority) -> NSLayoutConstraint {
        self.priority = priority
        return self
    }
}
