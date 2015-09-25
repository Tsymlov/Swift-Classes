var getFullName = {(firstName: String, lastName: String)->String in
    return firstName + " " + lastName
}

func getFullName(firstName: String, lastName: String, success: (fullName: String)->String)->String{
    let fullName = firstName + " " + lastName
    return success(fullName: fullName)
}
getFullName("Tim", lastName: "Cook") {"Mr. " + $0}

var sum = 0
let add: (Int)->() = {value in
    sum += value
}

add(5)
print(sum)//5
add(8)
print(sum)//13

let anotherAdd = add
anotherAdd(10)
print(sum)//23

let someTuple: (Int, ()->()) = (5, {print("Boo")})
someTuple.1()
someTuple.0
