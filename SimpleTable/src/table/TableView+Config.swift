import UIKit
import CommonCell
import ReusableCell

extension TableView {
   /**
    * Register cells
    */
   func registerCells() {
      self.register(CustomCell.self)
      self.register(AnotherCustomCell.self)
      self.register([CustomCell.self, AnotherCustomCell.self])
   }
   /**
    * Config table
    */
   func configTable() {
      self.separatorStyle = .none
      // Delegate
      self.dataSource = self
      self.delegate = self
      // UI
      self.contentInset = .zero
      self.scrollIndicatorInsets = self.contentInset
   }
}
