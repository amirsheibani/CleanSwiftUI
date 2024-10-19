//
//  GetIPAddressRepositoryImpl.swift
//  TestOne
//
//  Created by Amir Sheibani on 7/24/1403 AP.
//

class IPAddressRepositoryImpl: IPAddressRepository {
    
    let iPAddressRepository: IPAddressDataSource
    init(iPAddressRepository: IPAddressDataSource) {
        self.iPAddressRepository = iPAddressRepository
    }
    
    func getIPAddress() async -> Result<IPEntity> {
        
        do{
            let result = try await self.iPAddressRepository.getIPAddress()
            return ResultSuccess(data: result.data?.mapper(),message: result.message,status: result.status)
        }catch let error{
            return ResultFailure(error: error,message: error.localizedDescription,status: nil)
        }
    }
    
    
}

