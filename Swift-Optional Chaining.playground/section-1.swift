import UIKit

var textField = UITextField()
textField.placeholder = "Введите имя"
var anotherTextField: UITextField?
//anotherTextField.placeholder = "Введите номер телефона" // UITextField? does not have a memeber named placeholder
anotherTextField?.placeholder = "Введите номер телефона"
let empty = anotherTextField?.placeholder?.isEmpty // nil
