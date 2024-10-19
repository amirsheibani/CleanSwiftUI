//
//  GetIPAddressRepositoryImpl.swift
//  TestOne
//
//  Created by Amir Sheibani on 7/24/1403 AP.
//

class IPAddressRepositoryImpl: IPAddressRepository {
    
    let iPAddressDataSource: IPAddressDataSource
    init(iPAddressDataSource: IPAddressDataSource) {
        self.iPAddressDataSource = iPAddressDataSource
    }
    
    func getIPAddress() async -> Result<IPEntity> {
        
        do{
            let result = try await self.iPAddressDataSource.getIPAddress()
            return ResultSuccess(data: result.data?.mapper(),message: result.message,status: result.status)
        }catch let error{
            return ResultFailure(error: error,message: error.localizedDescription,status: nil)
        }
    }
    
    
}

