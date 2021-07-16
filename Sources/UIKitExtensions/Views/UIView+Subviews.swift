import UIKit

public extension UIView {
    /// Add views to the end of the receiver’s list of subviews.
    ///
    /// - Parameter views: The views to be added. After being added, this view appears on top of any other subviews.
    func addSubviews(_ views: [UIView]) {
        views.forEach {
            self.addSubview($0)
        }
    }

    /// Add views to the end of the receiver’s list of subviews.
    ///
    /// - Parameter views: The views to be added. After being added, this view appears on top of any other subviews.
    func addSubviews(_ views: UIView...) {
        addSubviews(views)
    }
}
