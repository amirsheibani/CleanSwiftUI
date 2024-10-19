//
//  ContentView.swift
//  TestOne
//
//  Created by Amir Sheibani on 7/24/1403 AP.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .task {
            let result = await GetIPAddressUseCase(iPAddressRepository: IPAddressRepositoryImpl(iPAddressDataSource: IPAddressDataSourceImpl())).call()
            if(result is ResultSuccess){
                print(result.data?.ip ?? "ip:-")
            }else{
                print(result.message ?? "ip:-")
            }
        }
    }
}

#Preview {
    ContentView()
}
