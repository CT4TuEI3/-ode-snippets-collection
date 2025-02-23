import UIKit

extension UIView {
    func addSubviews(_ views: [UIView?]) {
        views.forEach {
            guard let subview = $0 else { return }
            addSubview(subview)
        }
    }
    
    func addSubviews(_ views: UIView...) {
        addSubviews(views)
    }

    // MARK: - Или это
    
    func addSubviews(_ views: UIView...) {
        views.forEach {
            addSubview($0)
        }
    }

    func autolayout(block: () -> Void) {
        self.translatesAutoresizingMaskIntoConstraints = false
        block()
    }

    func constraintSize(width: CGFloat?, height: CGFloat?) {
        self.autolayout {
            if let width {
                self.widthAnchor.constraint(equalToConstant: width).activate()
            }
            if let height {
                self.heightAnchor.constraint(equalToConstant: height).activate()
            }
        }
    }
}

extension NSLayoutConstraint {
    @discardableResult
    func activate() -> NSLayoutConstraint {
        self.isActive = true
        return self
    }
}

