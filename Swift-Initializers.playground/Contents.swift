import UIKit

class Message {
//    var text: String
//    init(){
//        text = ""
//    }
    var text = ""
}

var msg = Message()
print("Current text length = \(msg.text.characters.count)")


class User {
    var firstName, lastName: String
    
    init(){
        firstName = ""
        lastName = ""
    }
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var description: String {
        return "\(firstName) \(lastName)"
    }
}

let billGates = User(firstName: "Bill", lastName: "Gates")
var emptyUser = User()
print(billGates.description)
print(emptyUser.description)

class Cargo {
    var weight: Double?
}

class Chat {
    let id: Int

    init(id: Int){
        self.id = id
    }
}

class ChatRoom: Chat {
    override init(id: Int){
        super.init(id: id)
//        id = 7 //Cannot assign to 'let' value 'id'
    }
}


struct Story {
    var user: User
    var message: Message
    var id: Int
    
    init (user: User, message: Message, id: Int){
        self.user = user
        self.message = message
        self.id = id
    }
    
    init(user: User, message: Message){
        let defaultID = 0
        self.init(user: user, message: message, id: defaultID)
    }
}

let story = Story(user: User(), message: Message(), id: 6)
let anotherStory = Story(user: User(), message: Message())

// Inheritance and Initialization
class Car {
    let color: UIColor
    
    init(color: UIColor){
        self.color = color
    }
    
    convenience init(){
        let c = UIColor.clearColor()
        self.init(color: c)
    }
}

var car = Car() // color == clear
car = Car(color: UIColor.whiteColor())

class BMW3rdSeries: Car {
    var turboEngine: Bool
    
    init(color: UIColor, turbo: Bool){
        turboEngine = turbo
        super.init(color: color)
    }
    
    override convenience init(color: UIColor){
        self.init(color: color, turbo: false)
    }
}

car = BMW3rdSeries(color: UIColor.blueColor(), turbo: true)
car = BMW3rdSeries(color: UIColor.redColor()) // turbo == false
car = BMW3rdSeries() // color == clear, turbo == false

class BMWM3: BMW3rdSeries {
    let add = "Super duper car"
}

car = BMWM3(color: UIColor.blueColor(), turbo: true)
car = BMWM3(color: UIColor.redColor()) // turbo == false
car = BMWM3() // color == clear, turbo == false

// Failable Initializers
class MyLovelyCar : Car{
    var name: String = ""
    init?(name: String){
        self.name = name
        super.init(color: UIColor.blackColor())
        if name.lowercaseString.rangeOfString("lovely") == nil {
            return nil
        }
    }
    
    override init(color: UIColor){
        super.init(color: color)
        name = ""
    }
    
//    init(name: String){
//        // error "Invalid redeclaration of init(name:)"
//    }
}

var myLovelyCar = MyLovelyCar(name: "My very very very lovely car")
myLovelyCar = MyLovelyCar(name: "Just a Car") // nil

class HerLovelyCar : MyLovelyCar {
    let interiorColor: UIColor
    init?(name: String, interiorColor: UIColor = UIColor.purpleColor()){
        self.interiorColor = interiorColor
        super.init(name: name)
        if interiorColor == UIColor.clearColor() {
            return nil
        }
    }

//    convenience init?(){
//        self.init(name: "lovely")
//    }

//    convenience init(){
//        self.init(name: "lovely") // Error! A non-failable init cannot delegate to failable init.
//    }
}

var hlc = HerLovelyCar(name: "")
hlc = HerLovelyCar(name: "pinky", interiorColor: UIColor.clearColor())
hlc = HerLovelyCar(name: "pinky", interiorColor: UIColor.redColor())
hlc = HerLovelyCar(name: "lovely pinky", interiorColor: UIColor.redColor())

//hlc = HerLovelyCar()

class OurLovelyCar : MyLovelyCar{
    let interiorColor = UIColor.whiteColor()
//    override init?(name: String) { // It works.
//        super.init(name: name + "lovely")
//    }
 
//    override init(name: String){ // Error! Нельзя вызывать super.init?(name:) внутри non-failable init
//        super.init(name: name + "lovely")
//    }
    
    override init(name: String){
        // Если поменять let name на var name в классе MyLovleCar то все будет работать.
        // И добавить init(color:)
        super.init(color: UIColor.blackColor())
        self.name = name
    }
}

var olc = OurLovelyCar(name: "pinky")
olc = OurLovelyCar(name: "")


// Required Initializers
class CarInRussia {
    private let insuranceNumber: String
    private var hasTechPassport = false
    required init(insuranceNumber: String){
        self.insuranceNumber = insuranceNumber
    }
    required convenience init(insuranceNumber: String, techPassportNumber: String){
        self.init(insuranceNumber: insuranceNumber)
        hasTechPassport = !techPassportNumber.isEmpty
    }
}

class LadaKalina: CarInRussia {
    required convenience init(insuranceNumber: String, techPassportNumber: String){
        self.init(insuranceNumber: insuranceNumber)
        hasTechPassport = techPassportNumber.characters.count >= 8
    }
}

var myKalina = LadaKalina(insuranceNumber: "123")
myKalina = LadaKalina(insuranceNumber: "123", techPassportNumber: "12345678")

// Setting a Default Property Value with a Closure or Function
struct SomeStruct {
    let someProperty: String = {
        // some action
        return "Some Value"
        }()
}

