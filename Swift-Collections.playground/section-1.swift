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
let subArray = anotherDigits[1..<4]
anotherDigits[0] = "0"
anotherDigits[0...5] = ["0"]
println(anotherDigits)
anotherDigits.replaceRange(1...3, with: ["1", "2", "3", "4", "5"])
//anotherDigits[99] // Ошибка времени выполнения
anotherDigits.insert("0", atIndex: 1)
anotherDigits.splice(["4", "5", "6"], atIndex: 2)
let zero = anotherDigits.removeAtIndex(0)
anotherDigits.removeRange(2...4)
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

var mutableDigits = digits
mutableDigits.sort({$0>$1})
println(mutableDigits)

let zeroes = mix.filter({$0 == 0})
println(zeroes)

let transformedArray = anotherDigits.map{ $0.toInt() ?? 0 }
println(transformedArray)

let sum = transformedArray.reduce(0, combine: {$0+$1})
println(sum)

var digitNames = [1: "One", 2: "Two", 3: "Three"]
digitNames.count
digitNames.isEmpty
digitNames[4] = "For"
digitNames[4] = "Four"
digitNames.updateValue("Fiv", forKey: 5)
digitNames.updateValue("Five", forKey: 5)//return "Fiv"
digitNames[6]
if let six = digitNames[6]{
    println("6 is \(six)")
}else{
    println("What does 6 mean?")
}
digitNames[5] = nil
println(digitNames)
digitNames.removeValueForKey(4)
println(digitNames)

var anotherDic = [Int:Int]() // предпочтительней
var dic = Dictionary<Int,Int>()

for (digit, name) in digitNames{
    println("\(digit):\(name) ")
}

for digit in digitNames.keys{
    println(digit)
}

for name in digitNames.values{
    println(name)
}

var digs = [Int](digitNames.keys)
let names = [String](digitNames.values)

digs.sort(){$0<$1}
for dig in digs{
    println(digitNames[dig])
}
let sortedKeysAndValues = sorted(digitNames){ $0.0 < $1.0 }
println(sortedKeysAndValues)