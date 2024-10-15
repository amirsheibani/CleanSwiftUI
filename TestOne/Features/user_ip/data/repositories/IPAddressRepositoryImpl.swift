//
//  GetIPAddressRepositoryImpl.swift
//  TestOne
//
//  Created by Amir Sheibani on 7/24/1403 AP.
//

class GetIPAddressRepositoryImpl: GetIPAddressRepository {
    func getIPAddress() -> any Result {
        return Success(data: "127.0.0.1", status: 200)
    }
}
