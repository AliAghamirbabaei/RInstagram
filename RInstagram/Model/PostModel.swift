//
//  PostModel.swift
//  RInstagram
//
//  Created by Ali Aghamirbabaei on 4/18/22.
//

import Foundation

struct Post {
    var id: Int
    var userID: Int
    var likes: String
    var whoLiked: [User]
    var postPicture: String
    var caption: String
    var time: String
}
