//
//  StoriesView.swift
//  OnboardingModule
//
//  Created by shivam dahale on 03/07/25.
//

import SwiftUI

struct StoriesView: View {
    var story : StoryDataModel
    
    var body: some View {
        
        HStack{
            VStack (spacing : 15){
                ZStack {
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 5))
                        .frame(width: width * 0.20, height: height * 0.10)
                        .foregroundStyle(
                            LinearGradient(colors: [.purple,.pink,.orange,.yellow], startPoint: .topTrailing, endPoint: .bottomLeading)
                        )
                        .padding()
                    
                    AsyncImage(url: story.profileIcon)
                        .scaledToFill()
                        .frame(width: width * 0.18, height: height * 0.08)
                        .clipShape(.circle)
                }
                .frame(width: width * 0.20, height: height * 0.08)
                .overlay(alignment: .bottomTrailing){
                    Image(systemName: "plus.circle.fill")
                        
                }
                
                Text(story.userName)
                    .font(.caption)
                
            }
        }
        .padding(.horizontal,8)
    }
}

#Preview {
    StoriesView(story: StoryDataModel(model: StoryResponseModel(
        id: "1",
        profileIcon: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBPeg1xeVlZiFg-J6Ees-4JnScIYEOtD8iHw&s"),
        userName: "")))
}
