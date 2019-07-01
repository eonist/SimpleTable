import Spatial
import UIKit

class TertiaryCell: BaseCell {
    lazy var titleLabel: UILabel = createTitleLabel()
    /**
     * When you set the data different UI's are updated (We also use this as a sort of init)
     */
    override var data: CellDataKind? {
        didSet {
            guard let data: TertiaryCellData = data as? TertiaryCellData else { fatalError("data not avaiable") }
            _ = titleLabel
            titleLabel.text = data.content
            self.contentView.backgroundColor = TertiaryCell.backgroundColor
        }
    }
}
