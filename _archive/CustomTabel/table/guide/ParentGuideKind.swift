import UIKit
///
/// - Abstract: Subviews of UIViews that adapt this protocol are able to align to textGuide
///
protocol ParentGuideKind {
    ///
    /// - Abstract: The textGuide works as a common indentation for all Items that adapt ChildGuideKind
    ///
    var textGuide: UILayoutGuide { get }
    ///
    /// - Remark: The guide is calculated based on the title items
    ///
    var titleItems: [String] { get }
}
extension ParentGuideKind where Self: UIView {
    ///
    /// - Abstract: Creates the text indentation guide for children to align to
    ///
    func createTextIndentationGuide() -> UILayoutGuide {
        let guide = UILayoutGuide()
        self.addLayoutGuide(guide)
        let margins = self.layoutMarginsGuide
        let maxTextWidth: CGFloat = self.maxTextWidth() // Optional name: widestTitleWidth
        guide.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: maxTextWidth).isActive = true
        guide.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        return guide
    }
    ///
    /// - Abstract: loop through model.data strings and their fonts
    /// - Note: https://stackoverflow.com/a/17749593/5389500
    ///
   func maxTextWidth() -> CGFloat {
      return titleItems.map {
         $0.size(withAttributes: [.font: UIFont.systemFont(ofSize: 16)]).width // Returns the width of the rendered text (based on font and string)
         }.max() ?? 0
   }
}
