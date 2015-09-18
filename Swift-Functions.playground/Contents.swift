func getFullName(firstName: String, secondName: String, lastName: String)->String{
    return firstName + " " + secondName + " " + lastName
}

getFullName("Thomas", secondName: "John", lastName: "Anderson")

func getTransparentColor(r: Double, g: Double, b: Double)->(Double, Double, Double, Double){
    return (r, g, b, 0.0)
}
getTransparentColor(1.0, g: 0.0, b: 0.0)

//func getTransparentColor(r: Double, _ g: Double, _ b: Double)->(Double, Double, Double, Double){
//    return (r, g, b, 0.0)
//} // For Swift 2.0

func joinChatRoom(id: String, success: ()->() = {print("Joining chat room was successful.")}){
    //do something with network in parallel thread
    success()
}
joinChatRoom("10")

func joinChatRoomErr(id: String, error: ()->() = {print("Error!")}, success:()->() = {print("Joining chat room was successful.")}){
    //do something with network in parallel thread
    success()
}
joinChatRoomErr("11", success: { () -> () in
    print("Success for chatRoom with id 11")
})

func someFunc(params: Int...){
    for param in params{
        print(param)
    }
}
someFunc(1,2,3,4,5,6,7,8,9,10)

func incrementArray(var arr: [Int]){
    for (index, item) in arr.enumerate(){
        arr[index] = item+1
    }
}
incrementArray([1,2,3,4,5,6,7,8,9,10])

func canAdd(a: Int, b: Int, inout sum: Int)->Bool{
    sum = a+b
    return true
}
var sum = 0
var success = canAdd(1, b: 2, sum: &sum)
print(sum)

let gettingFunction = getFullName
gettingFunction("Tim", secondName: "", lastName: "Cook")

func execute(function:(String, String, String)->String, param1: String, param2: String, param3:String)->String{
    return function(param1, param2, param3)
}
execute(gettingFunction, param1: "Bill", param2: "", param3: "Gates")

func chooseGettingFunction()->(String, String, String)->String{
    return getFullName
}

func globalFunc()->()->(){
    func nestedFunc(){
        //do smth
    }
    return nestedFunc
}

func doMathOperation(){
    var j = 10
    func multiplyJ(i: Int){
        j = j * i
    }
    multiplyJ(20)
    print("j = \(j)")
}
doMathOperation()
