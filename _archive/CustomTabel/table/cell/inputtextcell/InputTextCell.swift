import UIKit

class InputTextCell: TextCell {}
extension InputTextCell {
    ///
    /// - Abstract: Right aligned input text
    ///
    @objc override func createContentTextField() -> UITextField {
        let textField = super.createContentTextField()
        textField.isUserInteractionEnabled = true
        return textField
    }
}
