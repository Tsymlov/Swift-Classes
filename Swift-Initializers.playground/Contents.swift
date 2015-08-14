import UIKit

class Message {
//    var text: String
//    init(){
//        text = ""
//    }
    var text = ""
}

var msg = Message()
println("Current text length = \(count(msg.text))")


class User {
    var firstName: String
    var lastName: String
    
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
println(billGates.description)
println(emptyUser.description)

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

// Setting a Default Property Value with a Closure or Function
struct SomeStruct {
    let someProperty: String = {
        // some action
        return "Some Value"
    }()
}

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

