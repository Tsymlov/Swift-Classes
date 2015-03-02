func getFullName(firstName: String, secondName: String, lastName: String)->String{
    return firstName + " " + secondName + " " + lastName
}

getFullName("Thomas", "John", "Anderson")

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