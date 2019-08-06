import UIKit

class ViewController: UIViewController {
   override var prefersStatusBarHidden: Bool { return true }
   /**
    * Set title
    * - Note: I guess this must be set from this method in order for it to work
    */
   override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      let title = "Title"//AppDelegate.Titles.primary.localized
      navigationItem.title = title
   }
   override func viewDidLoad() {
      super.viewDidLoad()
      let strings: [String] = (0..<40).map { "Testing \($0)" }
      view = TableView(rowData: strings, frame: .zero, style: .plain)
      view.backgroundColor = .blue
   }
}
