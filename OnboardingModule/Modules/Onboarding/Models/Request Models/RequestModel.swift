//
//  SignupRequestModel.swift
//  OnboardingModule
//
//  Created by shivam dahale on 01/07/25.
//

import SwiftUI

struct SignupRequestModel : Codable{
    
    var mobileNumber: String
    var email: String
    var password: String
    
    init(model: SignupDataModel){
        self.mobileNumber = model.mobileNumber
        self.email = model.email
        self.password = model.password
    }
}


struct LoginRequestModel : Codable{
    
    var email: String
    var password: String
    
    init(model: LoginDataModel){
        self.email = model.email
        self.password = model.password
    }
}
