//
//  GetIPAddressRepository.swift
//  TestOne
//
//  Created by Amir Sheibani on 7/24/1403 AP.
//

protocol IPAddressRepository {
    func getIPAddress() async -> Result<IPEntity>
}


