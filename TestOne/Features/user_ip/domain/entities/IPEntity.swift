//
//  IPModel.swift
//  TestOne
//
//  Created by Amir Sheibani on 7/24/1403 AP.
//


struct IPModel: Codable{
    let ip:String?
    let value:String?
    
    func getObject(value: String) -> IPModel{
        let decoder = JSONDecoder()
        return try! decoder.decode(IPModel.self, from: value.data(using:.utf8)!)
    }
}