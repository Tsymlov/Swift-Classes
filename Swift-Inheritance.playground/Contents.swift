class Profile {
    var id = 0
    var name = ""
    var login = ""
    var password = ""
    
    func isEmpty()->Bool{
        return id == 0 && name == "" && login == "" && password == ""
    }
}

let profile = Profile()
profile.isEmpty()
profile.id++
profile.isEmpty()


class User: Profile {
    var contacts = [User]()
}

let johnScally = User()
johnScally.name = "John Scally"
let mikeMarculla = User()
mikeMarculla.name = "Mike Marculla"
johnScally.contacts.append(mikeMarculla)
mikeMarculla.contacts.append(johnScally)

class Company: Profile {
    var logoURLString = ""
    var site = ""
}

let apple = Company()
apple.name = "Apple Computers"
apple.site = "apple.com"
apple.logoURLString = "http://apple.com/logo.png"