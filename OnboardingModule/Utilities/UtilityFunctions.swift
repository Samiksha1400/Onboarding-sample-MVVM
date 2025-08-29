//
//  UtilityFunctions.swift
//  OnboardingModule
//
//  Created by shivam dahale on 30/06/25.
//

import SwiftUI

class UtilityFunctions{
    
    func encodeRequest<T: Codable>(req:T) -> Data? {
        
        guard let encodedRequest = try? JSONEncoder().encode(req) else {
            return nil
        }
        return encodedRequest
    }
    
    func decodeResponse<T: Codable>(resType:T.Type, data:Data) -> T? {

        
        guard let decodedResponse = try? JSONDecoder().decode(resType.self, from: data) else {
            return nil
        }
        return decodedResponse
    }
    
}
