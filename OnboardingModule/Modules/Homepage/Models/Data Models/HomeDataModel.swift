//
//  HomeDataModel.swift
//  OnboardingModule
//
//  Created by shivam dahale on 03/07/25.
//

import SwiftUI

struct StoryDataModel: Codable {
    
    var id: String = ""
    var profileIcon: URL = URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBPeg1xeVlZiFg-J6Ees-4JnScIYEOtD8iHw&s")!
    var userName: String = ""
    
    
    init(model: StoryResponseModel){
        self.id = model.id ?? ""
        self.profileIcon = model.profileIcon ?? URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBPeg1xeVlZiFg-J6Ees-4JnScIYEOtD8iHw&s")!
        self.userName = model.userName ?? ""
    }
}

struct PostDataModel: Codable {
    
    var id : String = ""
    var profileIcon: URL = URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBPeg1xeVlZiFg-J6Ees-4JnScIYEOtD8iHw&s")!
    var userName: String = ""
    var isAccountVerified = false
    var contentPhoto : URL = URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBPeg1xeVlZiFg-J6Ees-4JnScIYEOtD8iHw&s")!
    var isLiked = false
    var likesCount: Int = 0
    var commentsCount: Int = 0
    var sharesCount: Int = 0
    var isSaved = false
    
    init(model: PostResponseModel){
        self.id = model.id ?? ""
        self.profileIcon = model.profileIcon ?? URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBPeg1xeVlZiFg-J6Ees-4JnScIYEOtD8iHw&s")!
        self.userName = model.userName ?? ""
        self.isAccountVerified = model.isAccountVerified ?? false
        self.contentPhoto = model.contentPhoto ?? URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBPeg1xeVlZiFg-J6Ees-4JnScIYEOtD8iHw&s")!
        self.isLiked = model.isLiked ?? false
        self.likesCount = model.likesCount ?? 0
        self.commentsCount = model.commentsCount ?? 0
        self.sharesCount = model.sharesCount ?? 0
        self.isSaved = model.isSaved ?? false
    }
}
