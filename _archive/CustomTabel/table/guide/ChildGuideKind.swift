import UIKit
///
/// Abstract: UIViews that adapt this protocol are able to align to their parents textGuide
///
protocol ChildGuideKind { }

extension ChildGuideKind where Self: UIView {
    ///
    /// - Abstract: Returns the parent's guide (based on children title-widths)
    ///
    var textGuide: UILayoutGuide? {
        return (self.superview as? ParentGuideKind)?.textGuide
    }
}
