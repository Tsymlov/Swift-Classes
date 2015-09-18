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
//anotherDigits[anotherDigits.count]//EXC_BAD_INSTRUCTION(code=EXC_I386_INVOP, subcode=0x0)

anotherDigits.last
anotherDigits.first
let subArray = anotherDigits[1..<4]
anotherDigits[0] = "0"
anotherDigits[0...5] = ["0"]
print(anotherDigits)
anotherDigits.replaceRange(1...3, with: ["1", "2", "3", "4", "5"])
//anotherDigits[99] // Ошибка времени выполнения
anotherDigits.insert("0", atIndex: 1)
anotherDigits.insertContentsOf(["4", "5", "6"], at: 2)
let zero = anotherDigits.removeAtIndex(0)
anotherDigits.removeRange(2...4)
let three = anotherDigits.removeLast()

for digit in digits {
    print(digit)
}
for (index, value) in digits.enumerate(){
    print("Index: \(index) and value: \(value)")
}
for var index = 0; index < digits.count; ++index{
   print("Index: \(index) and value: \(digits[index])")
}

let empty = Array<Int>()
let anotherEmpty = [Int]()

var someOnes = Array(count: 8, repeatedValue: 1)
var someZeroes = [Int](count: 8, repeatedValue: 0)

var mix = someOnes + someZeroes
//var wrongMix = someOnes + digits // Ошибка

digits.indexOf("3")
class Foo {}
//digits.indexOf([Foo(), Foo(), Foo()], Foo()) // Ошибка

digits.contains("3")

var mutableDigits = digits
mutableDigits.sort({$0>$1})
print(mutableDigits)

let zeroes = mix.filter({$0 == 0})
print(zeroes)

let transformedArray = anotherDigits.map{ Int($0) ?? 0 }
print(transformedArray)

let sum = transformedArray.reduce(0, combine: {$0+$1})
print(sum)

var digitNames = [1: "One", 2: "Two", 3: "Three"]
digitNames.count
digitNames.isEmpty
digitNames[4] = "For"
digitNames[4] = "Four"
digitNames.updateValue("Fiv", forKey: 5)
digitNames.updateValue("Five", forKey: 5)//return "Fiv"
digitNames[6]
if let six = digitNames[6]{
    print("6 is \(six)")
}else{
    print("What does 6 mean?")
}
digitNames[5] = nil
print(digitNames)
digitNames.removeValueForKey(4)
print(digitNames)

var anotherDic = [Int:Int]() // предпочтительней
var dic = Dictionary<Int,Int>()

for (digit, name) in digitNames{
    print("\(digit):\(name) ")
}

for digit in digitNames.keys{
    print(digit)
}

for name in digitNames.values{
    print(name)
}

var digs = [Int](digitNames.keys)
let names = [String](digitNames.values)

digs.sort(){$0<$1}
for dig in digs{
    print(digitNames[dig])
}

let sortedKeysAndValues = digitNames.sort{ $0.0 < $1.0 }
print(sortedKeysAndValues)

let someSet = Set<String>()
var vendors: Set = ["Apple", "Samsung", "Microsoft"]
vendors.insert("Motorola")
vendors.count
vendors.isEmpty
vendors.remove("Microsoft")
vendors.removeAll()
vendors.contains("Apple")
