let maxMessagesInChatScreen = 180
var messagesInChatScreen = 0

var red = 1.0, green = 1.0, blue = 1.0, alpha = 1.0

var chatName, backButton, messageText: String

println("Максимальное количество сообщений в этом окне \(maxMessagesInChatScreen)")

println(UInt.min)
println(UInt.max)
println(Int.min)
println(Int.max)

let x: Int8 = 100
var y: Int16
y = Int16(x)
//y += x // Ошибка
y += Int16(x)
let pi = 3.14
//y = pi // Ошибка
y = Int16(pi)

let color = (0.0, 1.0, 1.0 , 0.0)
let (r, g, b, a) = color
println("r = \(r) g = \(g) b = \(b) a = \(a)")
let (_, _, _, alphaChanel) = color
println("Alpha chanel: \(alphaChanel)")
println("r = \(color.0) g = \(color.1) b = \(color.2) a = \(color.3)")
let anotherColor = (red: 0.0, blue: 1.0, green: 1.0 , alpha: 0.0)
println("r = \(color.red) g = \(color.green) b = \(color.blue) a = \(color.alpha)")

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
