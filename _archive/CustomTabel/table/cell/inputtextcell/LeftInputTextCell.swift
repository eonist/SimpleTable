import UIKit
///
/// - Remark: The titleLabel aligns to the left-guideline in parent
///
class LeftInputTextCell: InputTextCell, ChildGuideKind { }

extension LeftInputTextCell {
    ///
    /// Create TextField
    ///
    override func createContentTextField() -> UITextField {
        let tf: UITextField = .init()
        tf.font = .systemFont(ofSize: 16)
        tf.textColor = .gray
        tf.textAlignment = .left
        tf.tintColor = #colorLiteral(red: 0, green: 1, blue: 1, alpha: 1)//.cyan
        self.addSubview(tf)
        // Constraints
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 250), for: .horizontal)
        let right = tf.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Margin.horizontal)
        right.priority = UILayoutPriority(rawValue: 251)
        let y = tf.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        let left = tf.leadingAnchor.constraint(equalTo: textGuide?.leadingAnchor ?? descriptionLabel.trailingAnchor, constant: TextCell.Margin.horizontal)
        NSLayoutConstraint.activate([y, right, left])
        return tf
    }
}
