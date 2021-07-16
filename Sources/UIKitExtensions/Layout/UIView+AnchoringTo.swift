import UIKit

public extension UIView {
    /// Returns a collection of constraints to anchor the bounds of the current view to the given view.
    ///
    /// - Parameters:
    ///   - view: The view to anchor to.
    ///   - inset: The view's insets.
    ///
    /// - Returns: The layout constraints needed for this constraint.
    func constraintsForAnchoringTo(boundsOf view: UIView, inset: UIEdgeInsets = .zero) -> [NSLayoutConstraint] {
        [
            topAnchor.constraint(equalTo: view.topAnchor, constant: inset.top),
            leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: inset.left),
            view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: inset.bottom),
            view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: inset.right),
        ]
    }

    /// Returns a collection of constraints to anchor the bounds of the current view to the given view.
    ///
    /// - Parameter view: The view to anchor to.
    ///
    /// - Returns: The layout constraints needed for this constraint.
    func constraintsForAnchoringTo(marginsOf view: UIView) -> [NSLayoutConstraint] {
        [
            layoutMarginsGuide.topAnchor.constraint(equalTo: view.topAnchor),
            layoutMarginsGuide.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            view.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            view.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
        ]
    }
}
