//
//  SignUpView.swift
//  OnboardingModule
//
//  Created by shivam dahale on 30/06/25.
//

import SwiftUI

struct SignUpView: View {
    
    @StateObject var vm = SignUpVM()
    @State var navigateToLogin: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack (spacing: 10){
                
                Text("Sign Up")
                    .headerTextStyle()
                
                TextField("Mobile Number", text: $vm.signupModel.mobileNumber)
                    .keyboardType(.numberPad)
                
                TextField("Email", text: $vm.signupModel.email)
                    .keyboardType(.emailAddress)
                
                SecureField("Password", text: $vm.signupModel.password)
                    .keyboardType(.numberPad)
                
                SecureField("Confirm Password", text: $vm.signupModel.confirmPassword)
                    .keyboardType(.numberPad)
                
                Button(action: {
                    //TODO: call api through vm
                    vm.signUp()
                }){
                    Text("Sign Up")
                }
                
                NavigationLink(destination: LoginView(), isActive: $navigateToLogin){ }
                HStack{
                    Text("Already have an account?")
                        .footnoteTextStyle()
                    
                    Button(action: {
                        //TODO: call api through vm
                        navigateToLogin = true
                    }){
                        Text("Login")
                            .font(.caption)
                            .foregroundColor(.blue)
                    }
                    
                }
                
            }
            .padding(.horizontal,16)
        }
    }
}

#Preview {
    SignUpView()
}

let width = UIScreen.main.bounds.width
let height = UIScreen.main.bounds.height

