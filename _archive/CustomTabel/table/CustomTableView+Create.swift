import UIKit

extension CustomTableView {
    ///
    /// Create ruler
    ///
    func createRuler() -> Ruler {
        let ruler = Ruler()
        addSubview(ruler)
        ruler.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            ruler.widthAnchor.constraint(equalToConstant: 1),
            ruler.heightAnchor.constraint(equalTo: self.heightAnchor),
            ruler.centerXAnchor.constraint(equalTo: textGuide.leadingAnchor)])
        return ruler
    }
}
