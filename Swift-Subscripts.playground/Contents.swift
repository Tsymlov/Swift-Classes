struct User{
    var firstName: String?
    var lastName: String?
}

class Users{
    private var items = [User]()
    subscript(index: Int) -> User{
        get{
            return items[index]
        }
        set{
            if (index < items.count) && (index >= 0){
                items[index] = newValue
            }else{
                println("Error: Invalid index!")
            }
        }
    }
    func append(user: User){
        items.append(user)
    }
}

let users = Users()
users.append(User(firstName: "Bill", lastName: "Gates"))
users.append(User(firstName: "Tim", lastName: "Cook"))
users[0].lastName = "Jobs"
println(users[0].firstName! + " " + users[0].lastName!)


class DataTable {
    private var data = [[1,2,3,4,5,6,7,8,9,0],[1,2,3,4,5,6,7,8,9,0],[1,2,3,4,5,6,7,8,9,0]]
    subscript(row: Int, column: Int)->Int{
        get{
            return data[row][column]
        }
        set{
            data[row][column] = newValue
        }
    }
}

let table = DataTable()
println(table[1, 3])
table[2,0] = 0

class PhonesStore {
    private var phones = ["iphn": "iPhone", "smsg": "Samsung Galaxy", "nka": "Nokia 3310"]
    
    subscript(marking: String)-> String?{
        return phones[marking]
    }
    
    subscript(marking: String, count: Int)->(String, Int)?{
        return phones[marking] != nil ? (phones[marking]!, count) : nil
    }
}

let store = PhonesStore()

println(store["iphn"])
println(store["smsg", 100])

class SomeClass {
    subscript(var param: Int)->Int{
        param++
        return param
    }
    
    subscript(params: Int...)->[Int]{
        return params
    }
}

let some = SomeClass()
println(some[1,2,3,4,5,6,7])
