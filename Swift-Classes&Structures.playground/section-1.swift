class SomeClass {
    // properties and methods
}
struct SomeStruct {
    // properties and methods
}
class Chat {
    var name = ""
    var members = Array<String>()
}
struct Message {
    var text = ""
    var recipientID = 0
    var senderID = 0
}

let someClassInstance = SomeClass()
let someStructInstance = SomeStruct()
let chat = Chat()
let message = Message()

chat.name = "Bla Bla Room"
println("Welcome to \(chat.name)")
println("We have got \(chat.members.count) members")

let anotherMessage = Message(text: "Hi", recipientID: 1, senderID: 2)

struct User {
    var firstName: String
    var lastName: String
    let ID: Int
    var fullName: String {
        get{
            return firstName + " " + lastName
        }
        set(newFullName){
            firstName = newFullName
            lastName = ""
        }
    }
}

var billGates = User(firstName:"Bill", lastName:"Gates", ID: 1)
//let timCook = User() // Ошибка
billGates.firstName = "Bill - Gay. Tss..."
billGates.lastName = ""
//billGates.ID = 0 // Ошибка

println(billGates.fullName)
billGates.fullName = "Bill Gates"