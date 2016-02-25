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
user.updateContacts({a in print(a)}, failure: {e in print(e)})

struct Data {
    var day: Int
    var month: Int
    var year: Int
    
    mutating func setNextDay(){
        ++day
    }
    mutating func setNextMonth(){
        self = Data(day: day, month: month+1, year: year)
    }
}

var day = Data(day: 15,month: 04,year: 2015)
day.setNextDay()
day.setNextMonth()

enum Switch{
    case On, Off
    mutating func turn(){
        if self == On{
            self = Off
        }else{
            self = On
        }
    }
    static func load()->Switch{
        //load switch from local storage
        return Switch.Off
    }
    
    static func loadQuick()->Switch{
        return self.load()
    }
}

var sw = Switch.Off
sw.turn()// is On

import CoreData
class Profile: NSManagedObject {
    static func entity()->NSEntityDescription{
        // return some entity
        return NSEntityDescription()
    }
}
Profile.entity()
