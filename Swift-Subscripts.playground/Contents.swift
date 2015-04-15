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
