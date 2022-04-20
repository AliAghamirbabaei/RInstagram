//
//  DirectModel.swift
//  RInstagram
//
//  Created by Ali Aghamirbabaei on 4/20/22.
//

import Foundation

struct Direct {
    var id: Int
    var userID: Int
    var unreadCount: Int
    var message: String
    var isUserOnline: Bool
    var isUnreadMessage: Bool
}

let mockedDirects: [Direct] = [Direct(id: 0, userID: 4, unreadCount: 0, message: "Im watching Friends😵‍💫, what are u doin now?", isUserOnline: false, isUnreadMessage: false),
                               Direct(id: 1, userID: 1, unreadCount: 3, message: "Im doing my homework, but need to take a rest. What's your plan?", isUserOnline: false, isUnreadMessage: true),
                               Direct(id: 2, userID: 3, unreadCount: 0, message: "I've found this post. take lock at this", isUserOnline: false, isUnreadMessage: false),
                               Direct(id: 3, userID: 2, unreadCount: 5, message: "Hi😃, what are you doin?", isUserOnline: true, isUnreadMessage: true),
                               Direct(id: 4, userID: 5, unreadCount: 0, message: "I love you. see you.❤️", isUserOnline: false, isUnreadMessage: false),
                               Direct(id: 5, userID: 6, unreadCount: 0, message: "Let me know what you think.🤔", isUserOnline: true, isUnreadMessage: false),
                               Direct(id: 6, userID: 8, unreadCount: 0, message: "Ok 👍", isUserOnline: true, isUnreadMessage: false),
                               Direct(id: 7, userID: 7, unreadCount: 7, message: "Next time we should try it.", isUserOnline: false, isUnreadMessage: true),
                               Direct(id: 8, userID: 9, unreadCount: 0, message: "New movie released. wanna come here?", isUserOnline: true, isUnreadMessage: false),
                               Direct(id: 9, userID: 0, unreadCount: 1, message: "Nooooooo🤬", isUserOnline: false, isUnreadMessage: true),]
