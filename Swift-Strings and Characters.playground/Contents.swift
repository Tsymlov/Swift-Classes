var empty = ""
var emptyToo = String()
if empty.isEmpty{
    print("It's empty")
}

var response = "{\"_id\" = 5449b3;}"
for char in response.characters {
    print(char)
}

print(response.characters.first)

var kissingEyes: Character = "😚"
let smilingEyes: Character = "😄"

//response += kissingEyes // нельзя т.к. разные типы
response.append(kissingEyes)

let id = 1234
let json = "{\"_id\": \"\(id)\"}"

response.characters.count

"😚".utf16.count
"😚".characters.count

if response == json {
    print("Equal")
}
else {
    print("Not equal")
}

response.hasSuffix("}")
response.hasPrefix("{")



//response[0] // Error!

response[response.startIndex]
response.characters.first

response[response.endIndex.predecessor()]
response.characters.last

response[response.startIndex.successor()]
//response.characters[2] // Error!

let i = response.startIndex.advancedBy(3)
response[i]

//response[response.endIndex] //Error!
//response[response.endIndex.successor()] //Error!

for index in response.characters.indices {
    print(response[index], terminator: "*")
}

response.insert("*", atIndex: response.startIndex)

let name = "\",\nname\": \"John Appleseed\""
response.insertContentsOf(name.characters, at: response.endIndex.predecessor().predecessor())

response.removeAtIndex(response.startIndex)
print(response)

let range = response.endIndex.advancedBy(-10)..<response.endIndex
response.removeRange(range)
print(response)