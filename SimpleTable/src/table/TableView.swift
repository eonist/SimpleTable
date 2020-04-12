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
      configTable() // setup config of table
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
