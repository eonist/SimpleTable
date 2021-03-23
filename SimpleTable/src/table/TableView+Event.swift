import UIKit
import CommonCell

extension TableView {
   /**
    * When an item is tapped
    */
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      let id: String = rowData[indexPath.row]
      Swift.print("tapped id: \(id)")
   }
}
