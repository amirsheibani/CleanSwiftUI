struct IPModel: Codable{
    var ip:String?
    var country:String?

    mutating func getObject(value: [String:Any]) -> IPModel{
        self.ip = value["ip"] as? String
        self.country = value["country"] as? String
        return self
    }
}
