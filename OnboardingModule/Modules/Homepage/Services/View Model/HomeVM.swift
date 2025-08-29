//
//  HomeVM.swift
//  OnboardingModule
//
//  Created by shivam dahale on 03/07/25.
//

import Foundation

class HomeVM : ObservableObject {
    
    @Published var stories : [StoryDataModel] = []
    @Published var posts : [PostDataModel] = []
    
    let homepageServices = HomepageServices()
    
    func fetchStories() {
        
        homepageServices.callApiStories { res, err in
            if let res = res {
                
                DispatchQueue.main.async {
                    for story in res {
                        let model = StoryDataModel(model: story)
                        self.stories.append(model)
                    }
                }
            }else{
                if let err = err {
                    print(err.localizedDescription)
                }
            }
        }
    }
    
    func fetchPosts() {
        
        homepageServices.callApiPosts { res, err in
            if let res = res {
                DispatchQueue.main.async {
                    for post in res {
                        let model = PostDataModel(model: post)
                        self.posts.append(model)
                    }
                }
            }else{
                if let err = err {
                    print(err.localizedDescription)
                }
            }
        }
    }
}
