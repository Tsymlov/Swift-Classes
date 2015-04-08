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

println(billGates.fullName)
billGates.fullName = "Bill Gates"

class FileSystemHelper {
    
    lazy var fm0 = NSFileManager()
    lazy var fm1 = NSFileManager.defaultManager()
    lazy var fm2: NSFileManager = {return NSFileManager.defaultManager()}()
    lazy var one = 1
}

let helper = FileSystemHelper()
