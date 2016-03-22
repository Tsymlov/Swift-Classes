import Foundation
import UIKit

class ContentOperation: NSOperation {
    var progressHandler: (Double)->() = { (d) in /* do nothing */ }
    var completionHandler: ()->() = {/* do nothing */}
    
    func setProgress(progress: Double){
        progressHandler(progress)
    }
}

class DownloadContentOperation: ContentOperation {
    private var blobID: UInt
    
    init(blobID: UInt){
        self.blobID = blobID
        super.init()
    }
    
    override func main() {
        //downloading smth
    }
}

class UploadContentOperation: ContentOperation {
    private var fileName: String
    private var contentType: String
    
    init(fileName: String, contentType: String){
        self.fileName = fileName
        self.contentType = contentType
        super.init()
    }
    
    override func main(){
        //upload smth
    }
}

let ops = [
    UploadContentOperation(fileName: "attachment", contentType: "image"),
    UploadContentOperation(fileName: "archivedAttachment", contentType: "image"),
    DownloadContentOperation(blobID: 1234),
    UploadContentOperation(fileName: "post", contentType: "video")
]

var downloadingOps = [DownloadContentOperation]()
var uploadingOps = [UploadContentOperation]()

for op in ops{
    if op is DownloadContentOperation {
        downloadingOps.append(op as! DownloadContentOperation)
//        downloadingOps.append(op as! UploadContentOperation) // Ошибка
        print(op as? UploadContentOperation)
    }else if op is UploadContentOperation{
        uploadingOps.append(op as! UploadContentOperation)
    }
    let o = op as NSOperation
    
}

struct s {}
class c {}
var a = [AnyObject]()
a.append(c())
//a.append(s()) //Type s does not conform to protocol AnyObject

var ar = [Any]()
ar.append(c())
ar.append(s())
ar.append({(name: String)-> String in
    return "Mr. \(a)"
})
