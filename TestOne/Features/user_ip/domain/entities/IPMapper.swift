//
//  IPModel.swift
//  TestOne
//
//  Created by Amir Sheibani on 7/24/1403 AP.
//

extension IPModel{
    func mapper() -> IPModel{
        return IPModel(
                ip: ip,
                country: country
        )
    }
}

extension IPEntity{
    func mapper() -> IPEntity{
        return IPEntity(
                ip: ip,
                country: country
        )
    }
}
