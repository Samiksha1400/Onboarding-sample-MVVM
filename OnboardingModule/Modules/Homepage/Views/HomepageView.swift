//
//  HomepageView.swift
//  OnboardingModule
//
//  Created by shivam dahale on 03/07/25.
//

import SwiftUI

struct HomepageView: View {
    
    @StateObject var vm = HomeVM()
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 20){
                
                //MARK: Stories
                ScrollView{
                    HStack(spacing : 10){
                        
                        ForEach(vm.stories, id: \.id){ story in
                            StoriesView(story: story)
                        }
                    }
                    .padding()
                }
                
                //MARK: Posts
                VStack(spacing: 20){
                    ForEach(vm.posts, id: \.id){ post in
                        PostView(post: post)
                    }
                }
                .padding(.horizontal)
            }
            .padding(.top)
            
        }
        .scrollIndicators(.hidden)
        .onAppear(){
            self.vm.fetchStories()
            self.vm.fetchPosts()
        }
    }
}

#Preview {
    HomepageView()
}
