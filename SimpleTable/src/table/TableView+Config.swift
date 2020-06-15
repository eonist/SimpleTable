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
      self.register(types: [CustomCell.self, AnotherCustomCell.self])
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
extension UITableView {
   public func register<T: UITableViewCell>(types: [T.Type]) where T: ReusableCellKind {
      types.forEach { register($0.self, forCellReuseIdentifier: $0.defaultReuseIdentifier) }
   }
}
