let digits = ["1", "2", "3"]
var anotherDigits = ["4", "5", "6"]
//digits.append("7") // Ошибка времени компиляции
anotherDigits.append("8") // Ок

digits.count
digits.isEmpty
anotherDigits.append("9")
anotherDigits += ["0"]
anotherDigits += digits
anotherDigits[0]
anotherDigits.last
anotherDigits.first
anotherDigits[0] = "0"
anotherDigits[0...5] = ["0"]
println(anotherDigits)
//anotherDigits[99] // Ошибка времени выполнения
anotherDigits.insert("0", atIndex: 1)
let zero = anotherDigits.removeAtIndex(0)
let three = anotherDigits.removeLast()

for digit in digits {
    println(digit)
}
for (index, value) in enumerate(digits){
    println("Index: \(index) and value: \(value)")
}
for var index = 0; index < digits.count; ++index{
   println("Index: \(index) and value: \(digits[index])")
}

let empty = Array<Int>()
let anotherEmpty = [Int]()

var someOnes = Array(count: 8, repeatedValue: 1)
var someZeroes = [Int](count: 8, repeatedValue: 0)

var mix = someOnes + someZeroes
//var wrongMix = someOnes + digits // Ошибка

find(digits, "3")
class Foo {}
//find([Foo(), Foo(), Foo()], Foo()) // Ошибка

contains(digits, "3")