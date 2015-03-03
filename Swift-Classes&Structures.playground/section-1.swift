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
