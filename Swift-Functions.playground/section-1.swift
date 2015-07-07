func getFullName(firstName: String, secondName: String, lastName: String)->String{
    return firstName + " " + secondName + " " + lastName
}

getFullName("Thomas", "John", "Anderson")

func getTransparentColor(r: Double, g: Double, b: Double)->(Double, Double, Double, Double){
    return (r, g, b, 0.0)
}
getTransparentColor(1.0, 0.0, 0.0)

//func getTransparentColor(r: Double, _ g: Double, _ b: Double)->(Double, Double, Double, Double){
//    return (r, g, b, 0.0)
//} // For Swift 2.0

func joinChatRoom(id: String, success: ()->() = {println("Joining chat room was successful.")}){
    //do something with network in parallel thread
    success()
}
joinChatRoom("10")

func joinChatRoom(id: String, error: ()->() = {println("Error!")}, success:()->() = {println("Joining chat room was successful.")}){
    //do something with network in parallel thread
    success()
}
joinChatRoom("11", success: { () -> () in
    println("Success for chatRoom with id 11")
})

let gettingFunction = getFullName
gettingFunction("Tim", "", "Cook")

func execute(function:(String, String, String)->String, param1: String, param2: String, param3:String)->String{
    return function(param1, param2, param3)
}
execute(gettingFunction, "Bill", "", "Gates")

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
    println("j = \(j)")
}
doMathOperation()
