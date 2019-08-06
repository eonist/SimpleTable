import UIKit

class LeftTextCell: TextCell, ChildGuideKind {}

extension LeftTextCell {
    ///
    /// Create TextField
    ///
    override func createContentTextField() -> UITextField {
        let tf: UITextField = .init()
        tf.isUserInteractionEnabled = false
        tf.textAlignment = .left
        tf.textColor = .gray
        tf.tintColor = #colorLiteral(red: 0, green: 1, blue: 1, alpha: 1)//.cyan
        tf.font = .systemFont(ofSize: 16)
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
