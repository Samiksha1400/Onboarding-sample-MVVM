//
//  LoginVM.swift
//  OnboardingModule
//
//  Created by shivam dahale on 30/06/25.
//

import SwiftUI

struct SignupDataModel: Codable {
    
    var mobileNumber: String = ""
    var email: String = ""
    var password: String = ""
    var confirmPassword: String = ""
    var isSigUpSuccess = false
    var errorMessage: String = ""

}

struct LoginDataModel: Codable {
    
    var email: String = ""
    var password: String = ""
    
}
