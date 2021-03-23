import UIKit
import CommonCell
/**
 * Cell
 */
extension TableView {
   /**
    * Creates / Recycles cells
    */
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      Swift.print("indexPath:  \(indexPath)")
      let cell: UITableViewCell = {
         switch indexPath.row {
         case 0:
            guard let cell: CustomCell = tableView.dequeueReusableCell(withIdentifier: "\(CustomCell.self)", for: indexPath) as? CustomCell else { fatalError("err") }
            cell.textLabel?.text = rowData[indexPath.row]
            cell.backgroundColor = .clear // debug
            return cell as CustomCell
         default:
            guard let cell: AnotherCustomCell = tableView.dequeueReusableCell(withIdentifier: "\(AnotherCustomCell.self)", for: indexPath) as? AnotherCustomCell else {fatalError("err")}
            cell.textLabel?.text = rowData[indexPath.row]
            cell.backgroundColor = .clear
            return cell as AnotherCustomCell
         }
      }()
      return cell
   }
   /**
    * Returns row count in a section
    */
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return rowData.count
   }
   /**
    * Returns the height of each cell
    */
   func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      switch indexPath.row {
      case 0: return CustomCell.height
      default: return AnotherCustomCell.height
      }
   }
}
