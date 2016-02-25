import Foundation

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

print(billGates.fullName)
billGates.fullName = "Bill Gates"

let johnAppleseed = User(firstName: "John", lastName: "Appleseed", ID: 2)
//johnAppleseed.firstName = "Johny" // Ошибка

class FileSystemHelper {
    
    lazy var fm0 = NSFileManager()
    lazy var fm1 = NSFileManager.defaultManager()
    lazy var fm2: NSFileManager = {return NSFileManager.defaultManager()}()
    lazy var one = 1
}

let helper = FileSystemHelper()

class Message {
    var length: Int!
    var text: String!{
        willSet{
            length = newValue.characters.count
        }
        didSet{
            print(oldValue)
        }
    }
}

struct Constants {
    static let yandexMapToken = "1234567890"
}
print(Constants.yandexMapToken)

class Math {
    static let pi = 3.14
}
print(Math.pi)

enum HTTPMethods{
    static let maxTTL = 100
}

HTTPMethods.maxTTL
