import Spatial
import UIKit
import With
/**
 * Create
 */
extension TertiaryCell {
    /**
     * Create TitleLabel
     */
    func createTitleLabel() -> UILabel {
        let buttonHeight: CGFloat = 42
        let rect: CGRect = .init(x: 0, y: 0, width: 100, height: buttonHeight)
        return with(.init(frame: rect)) {
            $0.textAlignment = .center
            self.contentView.addSubview($0)
            $0.textAlignment = .left
            $0.backgroundColor = Constants.AwesomeColors.orange.uiColor
            $0.anchorAndSize(to: self.contentView, offset: .init(x: Margin.horizontal, y: 0))
        }
    }
}
