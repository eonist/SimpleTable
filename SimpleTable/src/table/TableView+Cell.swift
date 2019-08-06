import UIKit
/**
 * Cell
 */
extension TableView {
   /**
    * Returns row count in a section
    */
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return rowData.count
   }
   /**
    * Creates / Recycles cells
    */
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell: UITableViewCell = {
         switch indexPath.row {
         case 0:
            guard let cell: CustomCell = tableView.dequeueReusableCell(withIdentifier: "\(CustomCell.self)", for: indexPath as IndexPath) as? CustomCell else {fatalError("err")}
            cell.textLabel?.text = rowData[indexPath.row]
            cell.backgroundColor = .clear // debug
            return cell as CustomCell
         default:
            guard let cell:AnotherCustomCell = tableView.dequeueReusableCell(withIdentifier: "\(AnotherCustomCell.self)", for: indexPath as IndexPath) as? AnotherCustomCell else {fatalError("err")}
            cell.textLabel?.text = rowData[indexPath.row]
            cell.backgroundColor = .clear
            return cell as AnotherCustomCell
         }
      }()
      return cell
   }
   /**
    * Returns the height of each cell
    */
   func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      switch indexPath.row {
      case 0: return 32
      default: return 32
      }
   }
   /**
    * Register cells
    */
   func registerCells() {
      self.register(CustomCell.self, forCellReuseIdentifier: "\(CustomCell.self)")
      self.register(AnotherCustomCell.self, forCellReuseIdentifier: "\(AnotherCustomCell.self)")
   }
   /**
    * When an item is tapped
    */
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      let id: String = rowData[indexPath.row]
      _ = id
//      let vc = TertiaryDetailVC.init(id: id)
//      self.navigationController()?.pushViewController(vc, animated: true) // present(navController, animated: true, completion: {Swift.print("completed the transition")})
   }
}
/**
 * Cell
 */
class CustomCell: BaseCell {}
class AnotherCustomCell: BaseCell {}
class BaseCell: UITableViewCell {
   /**
    * Init
    */
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
      super.init(style: style, reuseIdentifier: reuseIdentifier)
      self.selectionStyle = .none // disables the selection highlighting
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
