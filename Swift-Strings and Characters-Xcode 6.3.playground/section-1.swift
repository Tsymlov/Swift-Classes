var empty = ""
var emptyToo = String()
if empty.isEmpty{
    print("It's empty")
}

let response = "{\"_id\" = 5449b3;}"
for char in response.characters {
    print(char)
}

let myArrayOfCharacters = Array(arrayLiteral: response)

var kissingEyes: Character = "😚"
let smilingEyes: Character = "😄"

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
