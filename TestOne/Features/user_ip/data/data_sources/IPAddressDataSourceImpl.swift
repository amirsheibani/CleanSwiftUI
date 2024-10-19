//
//  GetIPAddressRepository.swift
//  TestOne
//
//  Created by Amir Sheibani on 7/24/1403 AP.
//

import Foundation

class IPAddressDataSourceImpl: IPAddressDataSource {
    func getIPAddress() async throws -> BaseSingleResponse<IPModel> {
        let url = URL(string: "api.example.com/user")!
        var request = URLRequest(url: url)
        let (data,_ ) = try await URLSession.shared.data(for: request)
        return try BaseSingleResponse<IPModel>(data: data,create: IPModel.init)
    }
}

