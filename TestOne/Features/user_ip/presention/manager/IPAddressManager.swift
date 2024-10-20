//
//  IPAddressManager.swift
//  TestOne
//
//  Created by Amir Sheibani on 7/29/1403 AP.
//
import SwiftUI

class IPAddressManager: ObservableObject{
    @Published var ipAddress: String = "-"
    let useCase :GetIPAddressUseCase
    init(){
        useCase = GetIPAddressUseCase(iPAddressRepository: IPAddressRepositoryImpl(iPAddressDataSource: IPAddressDataSourceImpl()))
    }
    
    func getIPAddress() async{
        let result = await useCase.call()
        if(result is ResultSuccess){
            ipAddress = result.data?.ip ?? "ip:-"
        }else{
            print(result.error!.localizedDescription)
        }
    }
}
