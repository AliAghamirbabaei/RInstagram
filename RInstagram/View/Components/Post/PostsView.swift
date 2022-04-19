//
//  PostsView.swift
//  RInstagram
//
//  Created by Ali Aghamirbabaei on 4/19/22.
//

import SwiftUI

struct PostsView: View {
    @State private var isLiked: Bool = false
    var post: Post
    var user: [User]
    
    var body: some View {
        VStack {
            // MARK: - Post anchor
            HStack {
                Image(user[post.userID].profilePicture)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .cornerRadius(12)
                
                VStack(alignment: .leading) {
                    Text(user[post.userID].username)
                        .font(.fontUtil(.bold, size: 22))
                    
                    Text(user[post.userID].location)
                        .font(.fontUtil(.regular, size: 18))
                        .foregroundColor(.black.opacity(0.8))
                }
                
                Spacer()
                
                Button{
                    // More action
                } label: {
                    Image("More")
                        .resizable()
                        .frame(width: 25, height: 25)
                }
            }
            .padding(.horizontal)
            
            // MARK: - Post Picture
            ZStack {
                Image(post.postPicture)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 340, height: 420)
                    .cornerRadius(25)
                    .blur(radius: 15)
                    .offset(y: 5)
                    .padding(.top, 18)
                
                Image(post.postPicture)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 360, height: 420)
                    .cornerRadius(20)
            }
            
            // MARK: - Post actions
            HStack {
                Button{
                    isLiked.toggle()
                } label: {
                    Image(isLiked ? "RedHeart" : "Heart")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                
                Button{
                    
                } label: {
                    Image("Comment")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                
                Button{
                    
                } label: {
                    Image("Send")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                
                Spacer()
                
                Button{
                    
                } label: {
                    Image("Bookmark")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
            }
            .padding(.top, 20)
            .padding(.horizontal)
            
            // MARK: - Post insights
            HStack {
                ZStack {
                    Image(user[(0...9).randomElement()!].profilePicture)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                        .cornerRadius(7)
                    
                    Image(user[(0...9).randomElement()!].profilePicture)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                        .cornerRadius(7)
                        .offset(x: 15)
                    
                    Image(user[(0...9).randomElement()!].profilePicture)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                        .cornerRadius(7)
                        .offset(x: 30)
                }
                
                Text("\(post.likes) Likes")
                    .padding(.leading, 35)
                    .font(.fontUtil(.bold, size: 20))
                
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top, 7)
            
            // MARK: - Post caption
            HStack {
                Text(user[post.userID].username)
                    .font(.fontUtil(.bold, size: 20))
                    .foregroundColor(Color("Pink"))
                
                Text(post.caption)
                    .font(.fontUtil(.regular, size: 18))
                
                Spacer()
            }
            .padding(.horizontal)
            
            // MARK: - Post time
            HStack {
                Text(post.time)
                    .font(.fontUtil(.regular, size: 14))
                    .opacity(0.8)
                    .padding(.top, 1)
                
                Spacer()
            }
            .padding(.horizontal)
            
            // MARK: - Line
            GeometryReader { proxy in
                let size = proxy.size
                
                Rectangle()
                    .stroke(.black.opacity(0.5), lineWidth: 0.3)
                    .frame(width: size.width, height: 1)
            }
            .padding(.horizontal)
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView(post: Post(id: 4, userID: 6, likes: "742,621", postPicture: "5", caption: """
                             Tomorrow is weekend!👻
                             """, time: "3 hours ago"), user: mockedUsers)
    }
}
