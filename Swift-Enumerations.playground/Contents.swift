import Foundation

enum HTTPMethod{
    case GET, POST, PUT, DELETE
}
var method = HTTPMethod.POST
method = .GET

if method == .GET{
    // do something
}

switch method{
case .GET:
    println("Get")
case .POST:
    println("Post")
default:
    break
}

enum MessageState {
    case Failed(String)
    case Sending ((Int)->())
    case Sent(NSDate)
}

var state = MessageState.Sending({ progress in
    println(progress)
})
state = .Failed("Network error!")
let now = NSDate()
state = .Sent(now)

switch state{
case .Sending(let progress):
    progress(99)
case .Failed(let errorDescription):
    println(errorDescription)
case .Sent(let dateTime):
    println("Message was sent in \(dateTime)")
}

//From Alamofire
public enum Method: String {
    case OPTIONS = "OPTIONS"
    case GET = "GET"
    case HEAD = "HEAD"
    case POST = "POST"
    case PUT = "PUT"
    case PATCH = "PATCH"
    case DELETE = "DELETE"
    case TRACE = "TRACE"
    case CONNECT = "CONNECT"
}
var methodName = "DELETE"
switch methodName{
case Method.GET.rawValue:
    println("Get")
case Method.DELETE.rawValue:
    println("Delete")
default:
    break
}

enum Digit: Int{
    case Zero = 0, One, Two, Three, Four, Five, Six, Seven, Eight, Nine
}
println(Digit.Eight.rawValue)

let delete = Method(rawValue: "DELETE")
println(delete == .DELETE)

let eleven = Digit(rawValue: 11)
println(eleven == nil)
