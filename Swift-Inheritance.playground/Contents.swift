class Profile {
    var id = 0
    var name = ""
    var login = ""
    var password = ""
    var bio = ""
    
    func isEmpty()->Bool{
        return id == 0 && name == "" && login == "" && password == ""
    }
    //Простейший subscript для переопределения
    subscript(index: Int)->Int{
        return index
    }
}

let profile = Profile()
profile.isEmpty()
profile.id++
profile.isEmpty()
profile[4]

class User: Profile {
//Запрет переопределения. Приведет к ошибке компиляции в строке определения класса SuperUser.
//final class User: Profile {
    var contacts = [User]()
    //Переопределение метода
    override func isEmpty() -> Bool {
        return super.isEmpty() && contacts.isEmpty
    }
    //Переопределение свойства
    override var bio: String{
        get{
            return super.bio
        }
        set{
            super.bio = newValue + " USER"
        }
    }
    //Переопределение обозревателей свойств
    override var password: String{
        didSet{
            if password == login{
                print("Password cannot be equal login!")
            }
            if password.isEmpty{
                print("Password cannot be empty!")
            }
        }
    }
    //Переопределение subscript
    override subscript(index: Int)->Int{
        return index*10
    }
}

let johnScally = User()
johnScally.name = "John Scally"
let mikeMarculla = User()
mikeMarculla.name = "Mike Marculla"
johnScally.contacts.append(mikeMarculla)
mikeMarculla.contacts.append(johnScally)

//Проверяем переопределение свойства bio.
johnScally.bio = "Second CEO."
print(johnScally.bio)

//Проверяем переопределение обозревателя свойства password
johnScally.login = "scally"
johnScally.password = "scally"
johnScally.password = ""

//Проверяем переопределение индексатора
johnScally[4]

class Company: Profile {
    var logoURLString = ""
    var site = ""
}

let apple = Company()
apple.name = "Apple Computers"
apple.site = "apple.com"
apple.logoURLString = "http://apple.com/logo.png"

// Субклассы могут быть базовыми для других классов
class SuperUser: User {
    var externalID = 0
}
//Они получают все члены суперкласса плюс свои.
let superUser = SuperUser()
superUser.externalID++
superUser.name = "Steven Voznyak"
superUser.login = "vozzz"
superUser.password = "iloveAppleII"
//Методы тоже
superUser.isEmpty()



