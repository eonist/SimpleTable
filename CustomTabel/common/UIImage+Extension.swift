import UIKit

extension UIImage {
    /**
     * Creates UIImage for size and color
     * ## Examples:
     * let image: UIImage = UIImage.createImage(size: .init(width: 24, height: 24), color: .purple)
     */
    static func createImage(size: CGSize, color: UIColor) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { rendererContext in
            color.setFill()
            rendererContext.fill(CGRect(origin: .zero, size: size))
        }
    }
}
