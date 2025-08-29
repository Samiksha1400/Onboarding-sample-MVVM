//
//  Post.swift
//  OnboardingModule
//
//  Created by shivam dahale on 03/07/25.
//

import SwiftUI

struct PostView: View {
    
    var post : PostDataModel
    
    var body: some View {
        ScrollView{
            
            VStack (alignment: .leading,spacing: 10){
                
                //MARK: Header
                HStack {
                    
                    //profile Picture
                    AsyncImage(url: post.profileIcon)
                        .scaledToFit()
                        .frame(width: width * 0.10, height: height * 0.04)
                        .clipShape(.circle)
                    
                    //name
                    Text(post.userName)
                        .captionTextStyle()
                    
                    if post.isAccountVerified {
                        Image("verifiedAccount")
                            .resizable()
                            .frame(width: width * 0.04, height: height * 0.02)
                            .scaledToFit()
                            .clipShape(Circle())
                    }
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                    
                }
                .padding(.horizontal,8)
                
                //MARK: - Content Photo
                AsyncImage(url: post.contentPhoto)
                    .frame(width: width, height: width)
                    .scaledToFit()
                
                //MARK: - Like,Comment and share
                HStack{
                    HStack(spacing : 3){
                        Image(systemName: post.isLiked ? "heart.fill" : "heart")
                            .foregroundColor(post.isLiked ? .red : .primary)
                            .font(.system(size: 22))
                        
                        Text("\(post.likesCount)")
                            .font(.callout)
                        
                    }
                    HStack(spacing : 3){
                        Image(systemName: "message")
                            .scaleEffect(x: 1, y: 1)
                            .font(.system(size: 20))
                        
                        Text("\(post.commentsCount)")
                            .font(.callout)
                    }
                    HStack(spacing : 3){
                        Image(systemName: "paperplane")
                            .rotationEffect(.degrees(20))
                            .font(.system(size: 20))
                        
                        Text("\(post.sharesCount)")
                            .font(.callout)
                    }
                    Spacer()
                    
                    Image(systemName: post.isSaved ? "bookmark.fill" : "bookmark")
                        .font(.system(size: 20))
                }
                .padding(.horizontal,8)
                .padding(.top,8)
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    PostView(post: PostDataModel(model: PostResponseModel(id: "1", profileIcon: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBPeg1xeVlZiFg-J6Ees-4JnScIYEOtD8iHw&s"), userName: "Sam", isAccountVerified: true, contentPhoto: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBPeg1xeVlZiFg-J6Ees-4JnScIYEOtD8iHw&s"), isLiked: false, likesCount: 11, commentsCount: 11, sharesCount: 5, isSaved: true)))
}
