import UIKit

class PasswordTextCell: InputTextCell, PasswordTextKind {} // for password fields
protocol PasswordTextKind {} // show placeholder asterisks characters

extension PasswordTextCell {
    ///
    /// - Returns Password textfield
    ///
    @objc override func createContentTextField() -> UITextField {
        let textField = super.createContentTextField()
        textField.autocorrectionType = .no
        textField.autocapitalizationType = .none
        textField.spellCheckingType = .no
        textField.textColor = .white
        textField.backgroundColor = .clear
        textField.tintColor = #colorLiteral(red: 0, green: 1, blue: 1, alpha: 1)
        textField.font = .systemFont(ofSize: 16)
        textField.attributedPlaceholder = NSAttributedString(string: "*****", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]) // new_Password : our text feild name
        textField.isSecureTextEntry = true
        return textField
    }
}
