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
