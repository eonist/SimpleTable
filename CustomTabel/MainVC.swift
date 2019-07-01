import UIKit

class MainVC :UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = CustomTableView.init(rowData: [("Descripton: ",""),("Descripton: ",""), ("Descripton: ",""), ("Current password: ","") ,("Age: ","")], frame: .zero, style: .grouped)
        view.backgroundColor = .gray
    }
    override var prefersStatusBarHidden: Bool {return true}
}
//class MainView:UIView{}
