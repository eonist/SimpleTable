import UIKit

class MainVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let rowData = [("Descripton: ", ""),
                       ("Descripton: ", ""),
                       ("Descripton: ", ""),
                       ("Current password: ", ""),
                       ("Age: ", ""),
                       ("Username: ", "Tom"),
                       ("Facebook: ", "Not connected")]
        self.view = CustomTableView(rowData: rowData, frame: .zero, style: .grouped)
        view.backgroundColor = .black
    }
    override var prefersStatusBarHidden: Bool { return true }
}
//class MainView:UIView{}
