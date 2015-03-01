for i in 1...100{
    println(i)
}
for _ in 1...100{
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
