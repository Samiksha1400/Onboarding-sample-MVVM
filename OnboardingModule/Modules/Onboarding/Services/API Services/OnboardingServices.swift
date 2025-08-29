//
//  OnboardingServices.swift
//  OnboardingModule
//
//  Created by shivam dahale on 30/06/25.
//

import Foundation

class OnboardingServices {
    
    let utils = UtilityFunctions()
    let networkManager = NetworkManager()
    
    func callApiSignUp(model: SignupDataModel, completion: @escaping (SignupResponseModel?, Error?) -> Void) {
        
        let req = SignupRequestModel(model: model)
        
        let data = utils.encodeRequest(req: req)
        
        networkManager.crateRequest(baseURL: .dev, endpoint: .signup, httpMethod: .POST, body: data) { data, error in
            
            if let data = data {
                
                let decodedRes = self.utils.decodeResponse(resType: SignupResponseModel.self, data: data)
                completion(decodedRes, nil)
                
            }else {
                completion(nil, error)
            }
        }
    }
    
    
    func callApiLogin(model: LoginDataModel, completion: @escaping (LoginResponseModel?, Error?) -> Void) {
        
        let req = LoginRequestModel(model: model)
        
        let data = utils.encodeRequest(req: req)
        
        networkManager.crateRequest(baseURL: .dev, endpoint: .login, httpMethod: .POST, body: data) { data, error in
            
            if let data = data {
                
                let decodedRes = self.utils.decodeResponse(resType: LoginResponseModel.self, data: data)
                completion(decodedRes, nil)
                
            }else {
                completion(nil, error)
            }
        }
        
    }
}
