//
//  UserInfoView.swift
//  TestOne
//
//  Created by Amir Sheibani on 7/24/1403 AP.
//

import SwiftUI

struct UserInfo: View{
    @StateObject var ipAddressManager = IPAddressManager()
    
    public
    var body: some View{
        VStack{
            Text(ipAddressManager.ipAddress).font(.title)
        }
        .task {
            
            await ipAddressManager.getIPAddress()
        }
    }
}
