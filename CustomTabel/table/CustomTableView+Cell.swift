import UIKit

extension CustomTableView {
    /**
     * Returns row count in a section
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowItems.count
    }
    /**
     * Creates/Recycles cells
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //      let rowIndex:Int =
        let rowItem: RowItem = rowItems[indexPath.row]
        let cell: UITableViewCell = {
            switch indexPath.row {
            case 0:
                guard let cell: TextCell = tableView.dequeueReusableCell(withIdentifier: "\(TextCell.self)", for: indexPath as IndexPath) as? TextCell else {fatalError("err")}
                cell.data = TextCellData.init(description: rowItem.description, content: "TextCell")
                return cell as TextCell
            case 1:
                guard let cell: InputTextCell = tableView.dequeueReusableCell(withIdentifier: "\(InputTextCell.self)", for: indexPath as IndexPath) as? InputTextCell else {fatalError("err")}
//                cell.backgroundColor = .purple
                cell.data = TextCellData.init(description: rowItem.description, content: "InputTextCell")
                return cell as InputTextCell
            case 2:
                guard
                  let cell: LeftInputTextCell = tableView.dequeueReusableCell(withIdentifier: "\(LeftInputTextCell.self)", for: indexPath as IndexPath)
                     as? LeftInputTextCell else {
                  fatalError("err")
                }
//                cell.backgroundColor = .purple
                cell.data = TextCellData.init(description: rowItem.description, content: "LeftInputTextCell")
                return cell as LeftInputTextCell
            case 3:
                guard let cell: PasswordTextCell = tableView.dequeueReusableCell(withIdentifier: "\(PasswordTextCell.self)", for: indexPath as IndexPath) as? PasswordTextCell else {fatalError("err")}
//                cell.backgroundColor = .purple
                cell.data = TextCellData.init(description: rowItem.description, content: "")
                return cell as PasswordTextCell
            case 4:
                guard let cell: DateInputCell = tableView.dequeueReusableCell(withIdentifier: "\(DateInputCell.self)", for: indexPath as IndexPath) as? DateInputCell else {fatalError("err")}
//                cell.backgroundColor = .purple
                cell.data = TextCellData.init(description: rowItem.description, content: "YYYY-MM--DD")
                return cell as DateInputCell
            default:
                let cell = UITableViewCell.init()
                cell.backgroundColor = .gray
                return cell
            }
        }()
        cell.backgroundColor = .black
        return cell
    }
    /**
     * Returns the height of each cell
     */
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 2: return 48//fatalError("")
        default: return 48//fatalError("")
            //      case is 0:
            //      return 128
            //      default:
            //
        }
    }
    func registerCells() {
        self.register(TextCell.self, forCellReuseIdentifier: "\(TextCell.self)")
        self.register(InputTextCell.self, forCellReuseIdentifier: "\(InputTextCell.self)")
        self.register(PasswordTextCell.self, forCellReuseIdentifier: "\(PasswordTextCell.self)")
        self.register(LeftInputTextCell.self, forCellReuseIdentifier: "\(LeftInputTextCell.self)")
        self.register(DateInputCell.self, forCellReuseIdentifier: "\(DateInputCell.self)")
    }
}
