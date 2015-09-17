import Foundation

let pi = 3.14
var (index, name) = (0, "John Appleseed")//index = 0, name = "John Appleseed"
var arithmetics = pi + 1 - 2 * 3 / 4 //2.64
let remainder = 8 % 3 // 2
let floatRemainder = arithmetics % 2 //0.64
++index
--index
index += 1
index -= 1
print(-pi)

print(pi == 3.14) //true
print(pi != 3.14) //false
print(pi > 3.14) //false
print(pi < 3.14) //false
print(pi >= 3.14) //true
print(pi <= 3.14) //true


let error = pi < 3.14 && pi > 3.14
if !error{
    //do smth
}
if error || index < 0{
    //handle error
}

class Foo {
}

let foo = Foo()
let boo = foo
let goo = Foo()
print(foo === boo) // true
//foo == boo // error
print(foo === goo) // false
//foo == goo // error

let raduis = 100.0
let square = pi * pow(raduis, 2)
let msg = square > 0 ? "Square=\(square)" : "Empty"
print(msg)

var messageText: String? = nil
print(messageText ?? "")
messageText = "Hi!"
print(messageText ?? "")

for i in 1...50{
    // do smth
}

for i in 0..<["One", "Tho", "Freddy's coming for you"].count{
    print("Index = \(i)")
}
