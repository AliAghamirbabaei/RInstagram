//
//  StoriesView.swift
//  RInstagram
//
//  Created by Ali Aghamirbabaei on 4/18/22.
//

import SwiftUI

struct StoriesView: View {
    var story: Story
    var user: [User]
    
    var body: some View {
        VStack {
            ZStack {
                if story.isSeen {
                    RoundedRectangle(cornerRadius: 15)
                        .strokeBorder(
                            .gray.opacity(0.4),
                            lineWidth: 3
                        )
                        .frame(width: 70, height: 70)
                } else {
                    RoundedRectangle(cornerRadius: 15)
                        .strokeBorder(
                            LinearGradient(gradient: Gradient(colors: [Color("Insta-Gradient-First"), Color("Insta-Gradient-Second")]), startPoint: .topLeading, endPoint: .bottomTrailing),
                            lineWidth: 3
                        )
                        .frame(width: 70, height: 70)
                }
                
                Image(user[story.userID].profilePicture)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .cornerRadius(12)
            }
            
            Text(user[story.userID].username)
                .font(.fontUtil(.regular, size: 16))
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView(story: Story(id: 1, userID: 1, isSeen: false), user: mockedUsers)
    }
}
