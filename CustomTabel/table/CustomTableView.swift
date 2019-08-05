import UIKit
import Spatial
typealias CustomTableViewKind = UITableViewDelegate & UITableViewDataSource & ParentGuideKind
///
/// TableView
///
class CustomTableView: UITableView, CustomTableViewKind {
    typealias RowItem = (description: String, content: String)
    typealias RowItems = [RowItem]
    let rowItems: RowItems
    lazy var textGuide: UILayoutGuide = createTextIndentationGuide()
    lazy var ruler: Ruler = createRuler()
    /*Init*/
    init(rowData: RowItems, frame: CGRect, style: UITableView.Style) {
        self.rowItems = rowData
        super.init(frame: frame, style: style)
        registerCells()/*Registers Cell types*/
        self.dataSource = self
        self.delegate = self
        self.separatorStyle = .none
        self.backgroundColor = .lightGray
        self.backgroundView?.backgroundColor = .gray
        self.sectionHeaderHeight = 0
        self.sectionFooterHeight = 0
        self.tableHeaderView = .init(frame: .init(origin: .zero, size: CGSize(width: 0, height: CGFloat.leastNormalMagnitude)))
        self.tableFooterView = .init(frame: .init(origin: .zero, size: CGSize(width: 0, height: CGFloat.leastNormalMagnitude)))
        _ = ruler
    }
    ///
    /// Boilerplate
    ///
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
///
/// ParentGuideKind
///
extension CustomTableView {
    var titleItems: [String] { return self.rowItems.map { $0.description } }
}
