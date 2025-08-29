//
//  LoginView.swift
//  OnboardingModule
//
//  Created by shivam dahale on 30/06/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject var vm = SignUpVM()
    
    var body: some View {
        VStack (spacing: 10){
            
            Text("Login Page")
                .headerTextStyle()
            
            TextField("Email", text: $vm.loginModel.email)
                .keyboardType(.emailAddress)
            
            SecureField("Password", text: $vm.loginModel.password)
                .keyboardType(.numberPad)
            
            Button(action: {
                //TODO: call api through vm
                vm.login()
            }){
                Text("Login")
            }
        }
        .padding(.horizontal,16)
    }
}

#Preview {
    LoginView()
}
