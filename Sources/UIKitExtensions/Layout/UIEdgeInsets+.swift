import UIKit

public extension UIEdgeInsets {
    /// Add specific inset to all egdes.
    ///
    /// - Parameter inset: A `CGFloat` value that contains the inset.
    ///
    /// - Returns: An `UIEdgeInset` object with custom inset.
    static func all(_ inset: CGFloat) -> UIEdgeInsets {
        UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
    }

    /// Add specific inset to horizontal egdes.
    ///
    /// - Parameter inset: A `CGFloat` value that contains the inset.
    ///
    /// - Returns: An `UIEdgeInset` object with custom inset.
    static func horizonral(_ inset: CGFloat) -> UIEdgeInsets {
        UIEdgeInsets(top: 0.0, left: inset, bottom: 0.0, right: inset)
    }

    /// Add specific inset to vertical egdes.
    ///
    /// - Parameter inset: A `CGFloat` value that contains the inset.
    ///
    /// - Returns: An `UIEdgeInset` object with custom inset.
    static func vertical(_ inset: CGFloat) -> UIEdgeInsets {
        UIEdgeInsets(top: inset, left: 0.0, bottom: inset, right: 0.0)
    }
}
