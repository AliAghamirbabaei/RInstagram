//
//  StoryView.swift
//  RInstagram
//
//  Created by Ali Aghamirbabaei on 4/18/22.
//

import SwiftUI

struct StoryView: View {
    var viewModel: HomeViewModel
    
    var body: some View {
        // MARK: - My Story
        ScrollView(.horizontal, showsIndicators: false) {
        HStack {
            VStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.15), radius: 12, x: 0, y: 13)
                    .overlay(
                        Image("Plus")
                            .resizable()
                            .frame(width: 45, height: 45)
                    )
                
                Text("Me")
                    .font(.fontUtil(.bold, size: 16))
                    .foregroundColor(Color("Pink"))
            }
            .padding(10)
            
            // MARK: - Stories
                HStack {
                    ForEach(viewModel.stories, id: \.id){ story in
                        StoriesView(story: story, user: mockedUsers)
                            .padding(.horizontal, 3)
                    }
                }
                .padding(.trailing, 17)
            }
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(viewModel: HomeViewModel())
    }
}
