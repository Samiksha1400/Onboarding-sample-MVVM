//
//  HomeResponseModel.swift
//  OnboardingModule
//
//  Created by shivam dahale on 03/07/25.
//

import SwiftUI

struct StoryResponseModel: Codable {
    
    let id: String?
    let profileIcon: URL?
    let userName: String?
    
}

struct PostResponseModel: Codable {
    
    let id: String?
    let profileIcon: URL?
    let userName: String?
    let isAccountVerified: Bool?
    let contentPhoto: URL?
    let isLiked: Bool?
    let likesCount: Int?
    let commentsCount: Int?
    let sharesCount: Int?
    let isSaved: Bool?
}
