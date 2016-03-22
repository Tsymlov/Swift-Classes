var j = 0
// Depricated: it will be removed in Swift 3
j++
++j
j--
--j
// Insted, use this
j += 1
j -= 1

// C-style statement for is deprecated and will be removed in Swift 3
for var i = 0 ; i <= 10 ; i += 1 {
    print(i)
}

//Instead, use this
for i in 0...10  {
    print(i)
}
//For reversed list
for i in (0...10).reverse() {
    print(i)
}
//For stride included 10
for i in 0.stride(through: 10, by: 2){
    print(i)
}
//For stride excluded 10
for i in 0.stride(to: 10, by: 2){
    print(i)
}

//Key words as external parameter names
func repeatedPrint(string: String, repeat repeatTimes: Int) {
    for _ in 1...repeatTimes {
        print(string)
    }
}

repeatedPrint("Boo", repeat: 3)

//Can't use var for parameters
//Depricated and will remove in Swift 3
func sayHello(var name: String){
    name = "Hello " + name + "!"
    print(name)
}
sayHello("world")
// Instead, use this
func sayHelloRight(name: String){
    let helloName = "Hello " + name + "!"
    print(helloName)
}

let white = (1.0, 1.0, 1.0, 0.0)
let black = (0.0, 0.0, 0.0, 0.0)
if white == black{
    print("It's none sense")
}else{
    print("It's correct")
}

var k = 0
#if swift(>=2.2)
k += 1
#else
++k
#endif