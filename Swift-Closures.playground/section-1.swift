var getFullName = {(firstName: String, lastName: String)->String in
    return firstName + " " + lastName
}

func getFullName(firstName: String, lastName: String, success: (fullName: String)->String)->String{
    let fullName = firstName + " " + lastName
    return success(fullName: fullName)
}
getFullName("Tim", "Cook") {"Mr. " + $0}

var sum = 0
let add: (Int)->() = {value in
    sum += value
}

add(5)
println(sum)//5
add(8)
println(sum)//13

let anotherAdd = add
anotherAdd(10)
println(sum)//23

let someTuple: (Int, ()->()) = (5, {println("Boo")})
someTuple.1()
someTuple.0
