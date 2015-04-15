import Foundation

class User {
    var email: String?
    var firstName: String?
    var lastName: String?
    var contacts: [User]?
    
    func updateContacts(success:([User])->(), failure: (NSError!)->()){
        //do smth with contacts
    }
}

let user = User()
user.updateContacts({a in println(a)}, failure: {e in println(e)})

func updateContacts(success:([User])->(), failure: (NSError!)->()){
    //do smth with contacts
}
updateContacts({a in println(a)}, {e in println(e)})