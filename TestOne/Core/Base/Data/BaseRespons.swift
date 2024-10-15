import Foundation

class BaseRespone{
    var status: Int?
    var message: String?
    init(status: Int?, message: String?) {
        self.status = status
        self.message = message
    }
}

class BaseSingleResponse<T>: BaseRespone{
   var data: T?
    
    init(status: Int?, message:String?, data: Data,create:(([String:Any]?)->T)) throws{
        super.init(status: status, message: message)
        var result = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any]
        self.data = create(result)
    }
    
}

class BaseListResponse<T>: BaseRespone{
   var data: [T]?
    
    init(status: Int?, message:String?, data: Data,create:(([String:Any]?)->T)) throws{
        super.init(status: status, message: message)
        let result = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any]
        let items = result?["data"] as? [[String: Any]]
        self.data = []
        if(items != nil){
            for item in items! {
                self.data?.append(create(item))
            }
        }
        
    }
    
}
