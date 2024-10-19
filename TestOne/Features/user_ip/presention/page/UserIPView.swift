//
//  UserInfoView.swift
//  TestOne
//
//  Created by Amir Sheibani on 7/24/1403 AP.
//

import SwiftUI

struct UserInfo: View{
    public 
    var body: some View{
        VStack{
            Text("Hello, World!").font(.title)
        }
        .task {
            let result = await GetIPAddressUseCase(iPAddressRepository: IPAddressRepositoryImpl(iPAddressDataSource: IPAddressDataSourceImpl())).call()
            if(result is ResultSuccess){
                print(result.data?.ip ?? "ip:-")
            }else{
                print(result.error!.localizedDescription)
            }
            
        }
    }
}
