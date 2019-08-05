import UIKit

extension DateInputCell {
    ///
    /// Creates the DatePicker Component
    ///
    func createDatePicker() -> UIDatePicker {
        let datePicker = UIDatePicker()
        datePicker.backgroundColor = .black//.midnightBlack ⚠️️
        datePicker.setValue(UIColor.white/*.snowWhite ⚠️️*/, forKeyPath: "textColor")
        datePicker.datePickerMode = .date
        datePicker.maximumDate = Date()
        datePicker.minimumDate = {
            var components = DateComponents()
            components.year = -120 // what does this do?
            return Calendar.current.date(byAdding: components, to: Date())
        }()
        datePicker.date = {
            let dateFormatter: DateFormatter = {
                let df = DateFormatter()
                df.dateStyle = .long
                df.timeStyle = .none
                return df
            }()
            let date: Date? = dateFormatter.date(from: contentTextField.text ?? "")
            return date ?? datePicker.date
        }()
        contentTextField.keyboardAppearance = .default
        contentTextField.inputView = datePicker
        contentTextField.inputAccessoryView = createDatePickerToolBar()
        return datePicker
    }
    ///
    /// - Abstract: Creates the toolBar with cancel and done above the actual DatePicker
    ///
    private func createDatePickerToolBar() -> UIToolbar {
        let toolbar: UIToolbar = .init()
        toolbar.barStyle = .black
        let space: UIBarButtonItem = .init(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton: UIBarButtonItem = {
            let button: UIBarButtonItem = .init(barButtonSystemItem: .cancel, target: self, action: #selector(didTapDatePickerCancelButton))
            button.tintColor = .white//.snowWhite ⚠️️
            return button
        }()
        let doneButton: UIBarButtonItem = {
            let button: UIBarButtonItem = .init(barButtonSystemItem: .done, target: self, action: #selector(didTapDatePickerDoneButton))
            button.tintColor = .white//.snowWhite ⚠️️
            return button
        }()
        toolbar.sizeToFit()
        toolbar.setItems([cancelButton, space, doneButton], animated: false)
        return toolbar
    }
}

// MARK: - Selectors
extension DateInputCell {
    @objc func didTapDatePickerCancelButton() {
        contentTextField.resignFirstResponder()
    }
    @objc func didTapDatePickerDoneButton() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM yyyy" // I.e: 02 April 2019
        let dateStr = dateFormatter.string(from: datePicker.date)
        self.contentTextField.text = dateStr
        contentTextField.resignFirstResponder()
    }
}
