//
//  SignUpVM.swift
//  OnboardingModule
//
//  Created by shivam dahale on 30/06/25.
//

import SwiftUI

class SignUpVM: ObservableObject {
    
    @Published var signupModel = SignupDataModel()
    @Published var loginModel = LoginDataModel()
    let onboardingService = OnboardingServices()
    
    func signUp() {
        
        onboardingService.callApiSignUp(model: signupModel) { res, err in
            
            if let res = res {
                if res.statusCode == 200 || res.statusCode == 201{
                    print("Profile Created Successfully")
                }
                
            }else{
                if let err = err {
                    print(err.localizedDescription)
                }
            }
        }
    }
    
    
    func login() {
        
        onboardingService.callApiSignUp(model: signupModel) { res , err in
            
            if let res = res {
                if res.statusCode == 200 || res.statusCode == 201{
                    print("Login Successful")
                }
                
            }else{
                if let err = err {
                    print(err.localizedDescription)
                }
            }
            
        }
    }
    
}
