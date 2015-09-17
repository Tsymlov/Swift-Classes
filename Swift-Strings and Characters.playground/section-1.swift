var empty = ""
var emptyToo = String()
if empty.isEmpty{
    println("It's empty")
}

let response = "{\"_id\" = 5449b3;}"
for char in response {
    println(char)
}

let myArrayOfCharacters = Array(response)

var kissingEyes: Character = "😚"
let smilingEyes: Character = "😄"

let id = 1234
let json = "{\"_id\": \"\(id)\"}"

countElements(response)

countElements("😚".utf16)
countElements("😚")

if response == json {
    println("Equal")
}
else {
    println("Not equal")
}

response.hasSuffix("}")
response.hasPrefix("{")
