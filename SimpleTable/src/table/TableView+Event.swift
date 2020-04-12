import UIKit
import CommonCell

extension TableView {
   /**
    * When an item is tapped
    */
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      let id: String = rowData[indexPath.row]
      _ = id
      Swift.print("tapped")
      self.contentOffset.y += 32
      //      let vc = TertiaryDetailVC.init(id: id)
      //      self.navigationController()?.pushViewController(vc, animated: true) // present(navController, animated: true, completion: {Swift.print("completed the transition")})
   }
}
