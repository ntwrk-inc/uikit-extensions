import UIKit

public extension UIStackView {
    /// Addsviews to the end of the arrangedSubviews array.
    ///
    /// - Parameter views: The views to be added. After being added, this view appears on top of the stackview.
    func addArrangedSubviews(_ views: [UIView]) {
        views.forEach {
            self.addArrangedSubview($0)
        }
    }

    /// Add views to the end of the arrangedSubviews array.
    ///
    /// - Parameter views: The views to be added. After being added, this view appears on top of the stackview.
    func addArrangedSubviews(_ views: UIView...) {
        addArrangedSubviews(views)
    }
}
