//
//  HomeViewModel.swift
//  RInstagram
//
//  Created by Ali Aghamirbabaei on 4/18/22.
//

import Foundation

class HomeViewModel: ObservableObject {
    // MARK: - Mocked Data
    @Published public var stories = [Story]()
    @Published public var posts = [Post]()
    
    init() {
        stories = [Story(id: 0, userID: 0, isSeen: false),
                   Story(id: 1, userID: 1, isSeen: false),
                   Story(id: 2, userID: 2, isSeen: false),
                   Story(id: 3, userID: 3, isSeen: true),
                   Story(id: 4, userID: 7, isSeen: false),
                   Story(id: 5, userID: 8, isSeen: true),
                   Story(id: 6, userID: 9, isSeen: false)]
        
        posts = [Post(id: 0, userID: 4, likes: "323", whoLiked: [mockedUsers[2], mockedUsers[1], mockedUsers[3]], postPicture: "1", caption: """
        Happy Sunday lovelies ❤️❤️
        """, time: "5 hours ago"),
                 Post(id: 1, userID: 2, likes: "4", whoLiked: [mockedUsers[5], mockedUsers[1], mockedUsers[7]], postPicture: "2", caption: """
                             Dark Side of the Moon
                             """, time: "1 hours ago"),
                 Post(id: 2, userID: 8, likes: "41,231", whoLiked: [mockedUsers[9], mockedUsers[0], mockedUsers[3]], postPicture: "3", caption: """
                             Summer nights...
                             """, time: "32 minutes ago"),
                 Post(id: 3, userID: 1, likes: "235", whoLiked: [mockedUsers[4], mockedUsers[5], mockedUsers[6]], postPicture: "4", caption: """
                             """, time: "1 day ago"),
                 Post(id: 4, userID: 6, likes: "742,621", whoLiked: [mockedUsers[8], mockedUsers[9], mockedUsers[0]], postPicture: "5", caption: """
                             Tomorrow is weekend!👻
                             """, time: "3 hours ago"),
                 Post(id: 5, userID: 3, likes: "21,231", whoLiked: [mockedUsers[2], mockedUsers[4], mockedUsers[3]], postPicture: "6", caption: """
                             Never forget your self...
                             """, time: "8 hours ago"),
                 Post(id: 6, userID: 5, likes: "4,171", whoLiked: [mockedUsers[0], mockedUsers[3], mockedUsers[8]], postPicture: "7", caption: """
                             Hoje é meu aniversário ❤️🥳
                             """, time: "12 minutes ago"),
                 Post(id: 7, userID: 5, likes: "5,331", whoLiked: [mockedUsers[9], mockedUsers[1], mockedUsers[6]], postPicture: "8", caption: """
                             Tag your BFF 🤍
                             """, time: "54 minutes ago"),
                 Post(id: 8, userID: 3, likes: "25,681", whoLiked: [mockedUsers[4], mockedUsers[3], mockedUsers[7]], postPicture: "9", caption: """
                             Hi! 😊💫
                             """, time: "3 days ago")]
    }
    
    public func getRandomUser() -> [User] {
        return [mockedUsers.randomElement()!, mockedUsers.randomElement()!, mockedUsers.randomElement()!]
    }
}
