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
    init(id: Int){
        super.init(id: id)
//        id = 7 //Error: Cannot assign to 'let' value 'id'
    }
}