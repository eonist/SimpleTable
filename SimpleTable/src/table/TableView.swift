import UIKit
import With
import Spatial

class TableView: UITableView, UITableViewDelegate, UITableViewDataSource {
   let rowData: [String]
   /**
    * Init
    */
   init(rowData: [String], frame: CGRect, style: UITableView.Style){
      self.rowData = rowData
      super.init(frame: frame, style: style)
      registerCells() // Registers Cell types
      self.separatorStyle = .none
      // Delegate
      self.dataSource = self
      self.delegate = self
      // UI
      self.contentInset = .init(top: 0, left: 0, bottom: 0, right: 0)
      self.scrollIndicatorInsets = self.contentInset
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
