import UIKit
///
/// - Remark: To get the date, use `self.datePicker.date`
///
class DateInputCell: LeftInputTextCell/*, DateInputKind*/ {
    lazy var datePicker: UIDatePicker = createDatePicker() // Using lazy initializing avoids recreating the component on every textfield tap
}
extension DateInputCell {
    ///
    /// - Remark: We add delegate so that the dataPicker gets activated on textField tap
    ///
    override func createContentTextField() -> UITextField {
        let textField = super.createContentTextField()
        textField.delegate = self
        return textField
    }
}
extension DateInputCell: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.reloadInputViews()
        _ = datePicker // Activates datePicker
    }
    ///
    /// - Abstract: If the user hits the return keyboard button, then the textField resigns. (Aka: exits focus)
    ///
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
