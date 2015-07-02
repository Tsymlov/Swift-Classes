for i in 1...100{
    println(i)
}
for _ in 1...100{
    // do something 100 times
}
for var i = 0; i<100; ++i{
    // do something 100 times
}

var greeting: String
let localization = "English"
switch localization{
case "Russian", "russian", "rus":
    greeting = "Войти"
case "English", "english", "eng":
    greeting = "Sign In"
default:
    greeting = ""
    println("Error. Have we got a new localization?")
}

let tempOfWater = 28
switch tempOfWater{
case Int.min...0:
    println("Ice")
case 0...100:
    println("Fluid")
case 100...3000:
    println("Steam")
case 3000...Int.max:
    println("Plasma")
default:
    println("Science unknown")
}

println(tempOfWater)

let someColor = (1.0, 1.0, 1.0, 0.1)
switch someColor{
case (0.0, 0.0, 0.0, 0.0):
    println("It's white.")
case (_, _, _, 0.0):
    println("It's transparent.)")
case (let r, let g, let b, 0.0...0.2):
    println("It's more invisible. (r,g,b)=(\(r),\(g),\(b))")
case let (r, g, b, a):
    println("It's visible color. (r,g,b,a)=(\(r),\(g),\(b),\(a))")
}

let anotherColor = (1.0, 1.0, 1.0, 10.0)
switch anotherColor{
case let (r,_,_,_) where !((0.0...1.0) ~= r):
    println("Wrong value! r = \(r)")
case let (_,g,_,_) where !((0.0...1.0) ~= g):
    println("Wrong value! g = \(g)")
case let (_,_,b,_) where !((0.0...1.0) ~= b):
    println("Wrong value! b = \(b)")
case let (_,_,_,a) where !((0.0...1.0) ~= a):
    println("Wrong value! a = \(a)")
default:
    println("Checking passed.")
}