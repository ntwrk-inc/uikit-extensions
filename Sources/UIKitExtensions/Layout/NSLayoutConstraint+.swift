import class UIKit.NSLayoutConstraint

public extension NSLayoutConstraint {
    static func on(_ constraints: [NSLayoutConstraint]) {
        constraints.forEach {
            $0.isActive = true
        }
    }

    static func on(_ constraintsArray: [[NSLayoutConstraint]]) {
        let constraints = constraintsArray.flatMap { $0 }
        NSLayoutConstraint.on(constraints)
    }
}
