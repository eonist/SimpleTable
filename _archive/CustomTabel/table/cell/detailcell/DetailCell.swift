import UIKit

class DetailCell: TextCell {
    lazy var customAccessoryView: UIImageView = createCustomAccessoryView()
}
extension DetailCell {
    ///
    /// - Remark: We pin the right side to the customAccessoryView left side
    ///
    override func configContentTextFieldConstraints(_ tf: UITextField) {
        //Swift.print("DetailCell.configContentTextFieldConstraints")
        tf.translatesAutoresizingMaskIntoConstraints = false
        let y = tf.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        let left = tf.leadingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor, constant: Margin.horizontal)
        left.priority = .init(rawValue: 251)
        let right = tf.trailingAnchor.constraint(equalTo: customAccessoryView.leadingAnchor, constant: -Margin.horizontal)
        NSLayoutConstraint.activate([left, right, y])
        tf.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 250), for: .horizontal) // Makes sure the content doesnt overlap the label
    }
    ///
    /// Creates the customAccessoryView
    ///
    func createCustomAccessoryView() -> UIImageView {
        let imageView: UIImageView = .init()
        imageView.contentMode = .center
        let image: UIImage = .createImage(size: .init(width: 24, height: 24), color: .purple)
        imageView.image = image
        addSubview(imageView)
        // Constraints
        imageView.translatesAutoresizingMaskIntoConstraints = false
        let right = imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor/*, constant: -Margin.horizontal*/)
        let height = imageView.heightAnchor.constraint(equalTo: self.heightAnchor)
        let width = imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor)
        NSLayoutConstraint.activate([right, width, height])
        return imageView
    }
}
