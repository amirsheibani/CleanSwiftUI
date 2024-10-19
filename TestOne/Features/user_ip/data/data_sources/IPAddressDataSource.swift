//
//  GetIPAddressRepository.swift
//  TestOne
//
//  Created by Amir Sheibani on 7/24/1403 AP.
//

protocol IPAddressDataSource {
    func getIPAddress() async throws -> BaseSingleResponse<IPModel>
}


