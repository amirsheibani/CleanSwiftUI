struct IPModel{
    var ip:String?
    var country:String?

      init(value: [String:Any]){
        self.ip = value["ip"] as? String
        self.country = value["country"] as? String
    }
}
