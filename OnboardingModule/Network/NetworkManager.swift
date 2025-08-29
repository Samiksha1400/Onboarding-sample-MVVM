//
//  NetworkManager.swift
//  OnboardingModule
//
//  Created by shivam dahale on 30/06/25.
//

import SwiftUI

class NetworkManager {
    
    func crateRequest(baseURL : BaseURL, endpoint: Endpoint, httpMethod: HttpMethod, body: Data?, completion: @escaping (Data?, Error?) -> Void){
        
        
        let url = URL(string: "\(baseURL.rawValue)\(endpoint.rawValue)")
        
        guard let url = url else {
            print("Invalid URL")
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = httpMethod.rawValue
        
        if let body = body {
            urlRequest.httpBody = body
        }
        
        URLSession.shared.dataTask(with: urlRequest) { data, res, err in
            
          if let data = data {
                completion(data, nil)
          }else {
              completion(nil, err)
          }
            
        }
        .resume()
    }
}
