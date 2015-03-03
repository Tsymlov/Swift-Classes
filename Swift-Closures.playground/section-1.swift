var getFullName = {(firstName: String, lastName: String)->String in
    return firstName + " " + lastName
}

func getFullName(firstName: String, lastName: String, success: (fullName: String)->String)->String{
    let fullName = firstName + " " + lastName
    return success(fullName: fullName)
}
getFullName("Tim", "Cook") {"Mr. " + $0}