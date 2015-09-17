let maxMessagesInChatScreen = 180
var messagesInChatScreen = 0

var red = 1.0, green = 1.0, blue = 1.0, alpha = 1.0

var chatName, backButton, messageText: String

print("Максимальное количество сообщений в этом окне \(maxMessagesInChatScreen)")
print(1,2,3,4,5, separator: "+", terminator: "=") //1+2+3+4+5=
print(1+2+3+4+5)

print(UInt.min)
print(UInt.max)
print(Int.min)
print(Int.max)

let x: Int8 = 100
var y: Int16
y = Int16(x)
//y += x // Ошибка
y += Int16(x)
let double = Double(y)
let pi = 3.14
//y = pi // Ошибка
y = Int16(pi)
//let z = "12345".toInt() ?? 0 // Перестало работать в Swift 2.0
let z = Int("12345")
let s1 = String(12345)
let s2 = "\(12345)"
let array = Array(arrayLiteral: "xyz")
let str = String(["x", "y", "z"])

let color = (0.0, 1.0, 1.0 , 0.0)
let (r, g, b, a) = color
print("r = \(r) g = \(g) b = \(b) a = \(a)")
let (_, _, _, alphaChanel) = color
print("Alpha chanel: \(alphaChanel)")
print("r = \(color.0) g = \(color.1) b = \(color.2) a = \(color.3)")
let anotherColor = (red: 0.0, blue: 1.0, green: 1.0 , alpha: 0.0)
print("r = \(anotherColor.red) g = \(anotherColor.green) b = \(anotherColor.blue) a = \(anotherColor.alpha)")

var i: Int? // знак вопроса говорит, что Int - опциональный
i = nil // и мы можем присвоить nil
i = 100 // или значение
let j: Int? = nil // не знаю зачем, но такое возможно
var k: Int //обычный Int
//k = nil // выдаст ошибку времени компиляции

import UIKit
var label: UILabel? // сейчас содержит nil
label = UILabel()
//label.text = "" // Ошибка UILabel? doesn't have memeber named 'text'
label!.text = "Ok"
label = nil
//label!.text = "Fck" // Ошибка времени исполнения EXC_BAD_INSTRUCTION(code=EXC_I386_INVOP, subcode=0x0)
if let unwrappedLabel =  label {
    unwrappedLabel.text = "So good"
    //    unwrappedLabel = new UILabel() // так нельзя потому что использовали let
}
if var unwrappedI = i{
    unwrappedI = 500
}
var button: UIButton!
button = UIButton()
button.setTitle("Back", forState: UIControlState.Normal)
button = nil
//button.setTitle("Fck", forState: UIControlState.Normal) // Ошибка времени исполнения EXC_BAD_INSTRUCTION(code=EXC_I386_INVOP, subcode=0x0)
