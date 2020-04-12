import UIKit
import CommonCell

extension TableView {
   /**
    * Register cells
    */
   func registerCells() {
      self.register(CustomCell.self, forCellReuseIdentifier: "\(CustomCell.self)")
      self.register(AnotherCustomCell.self, forCellReuseIdentifier: "\(AnotherCustomCell.self)")
   }
}
