//
//  HomepageServices.swift
//  OnboardingModule
//
//  Created by shivam dahale on 03/07/25.
//

import Foundation

class HomepageServices {
    
    let utils = UtilityFunctions()
    let networkManager = NetworkManager()
    
    func callApiStories(completion: @escaping ([StoryResponseModel]?, Error?) -> Void){
        
        networkManager.crateRequest(baseURL: .dev, endpoint: .stories, httpMethod: .GET, body: nil) { data, error in
            if let data = data {
                
                let decodedRes = self.utils.decodeResponse(resType: [StoryResponseModel].self, data: data)
                completion(decodedRes, nil)
                
            }else {
                completion(nil, error)
            }
        }
    }
    
    func callApiPosts(completion: @escaping ([PostResponseModel]?, Error?) -> Void){
        
        networkManager.crateRequest(baseURL: .dev, endpoint: .posts, httpMethod: .GET, body: nil) { Data, error in
            if let Data = Data {
                
                let decodedRes = self.utils.decodeResponse(resType: [PostResponseModel].self, data: Data)
                completion(decodedRes, nil)
                
            }else {
                completion(nil, error)
            }
        }
    }
}
