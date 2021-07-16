import UIKit

public extension UIView {
    /// Change nested margins in view.
    ///
    /// - Parameter inset: A `CGFloat` value that contains the inset.
    func changeNestedMargins(inset: CGFloat) {
        changeNestedMargins(top: inset, leading: inset, trailing: inset, bottom: inset)
    }

    /// Change nested margins in view.
    ///
    /// - Parameters:
    ///   - top: A `CGFloat` value that contains the top inset.
    ///   - leading: A `CGFloat` value that contains the leading inset.
    ///   - trailing: A `CGFloat` value that contains the trailing inset.
    ///   - bottom: A `CGFloat` value that contains the bottom inset.
    func changeNestedMargins(top: CGFloat, leading: CGFloat, trailing: CGFloat, bottom: CGFloat) {
        if #available(iOS 11.0, *) {
            directionalLayoutMargins = NSDirectionalEdgeInsets(
                top: top,
                leading: leading,
                bottom: bottom,
                trailing: trailing
            )
        } else {
            layoutMargins = UIEdgeInsets(
                top: top,
                left: leading,
                bottom: bottom,
                right: trailing
            )
        }
    }

    /// Change nested margins in view.
    ///
    /// - Parameter inset: A `UIEdgeInsets` value that contains the inset.
    func changeNestedMargins(inset: UIEdgeInsets) {
        changeNestedMargins(top: inset.top, leading: inset.left, trailing: inset.right, bottom: inset.bottom)
    }
}
