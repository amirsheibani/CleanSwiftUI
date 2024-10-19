import Foundation

class BaseRespone{
    var status: Int?
    var message: String?
    init(data: Data) throws{
        var result = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any]
        self.status = result?["status"] as? Int
        self.message = result?["message"] as? String
    }
}

class BaseSingleResponse<T>: BaseRespone{
   var data: T?
    
    init(data: Data,create:([String:Any])->T) throws{
        try super.init(data: data)
        var result = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any]
        self.data = create(result!)
    }
    
}

class BaseListResponse<T>: BaseRespone{
   var data: [T]?
    
    init(data: Data,create:([String:Any]?)->T) throws{
        try super.init(data: data)
        
        let result = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any]
        let items = result?["data"] as? [[String: Any]?]
        self.data = []
        if(items != nil){
            for item in items! {
                self.data?.append(create(item))
            }
        }
        
    }
    
}
