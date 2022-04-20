//
//  UserModel.swift
//  RInstagram
//
//  Created by Ali Aghamirbabaei on 4/18/22.
//

import Foundation

struct User {
    var id: Int
    var username: String
    var profilePicture: String
    var location: String
}

// MARK: - Mocked Data
let mockedUsers: [User] = [User(id: 0, username: "Lucien Evans", profilePicture: "Lucien", location: "Neka', Iran"),
                     User(id: 1, username: "Oliver Smith", profilePicture: "Oliver", location: "Tehran, Iran"),
                     User(id: 2, username: "Jonny Martinez", profilePicture: "Jonny", location: "Babol, Iran"),
                     User(id: 3, username: "Mac Slown", profilePicture: "Mac", location: "Esfahan, Iran"),
                     User(id: 4, username: "Franklin Fricilon", profilePicture: "Franklin", location: "Masjed Soleyman, Iran"),
                     User(id: 5, username: "Eddie Jameson", profilePicture: "Eddie", location: "Rasht, Iran"),
                     User(id: 6, username: "Neil May", profilePicture: "Neil", location: "Mashhad, Iran"),
                     User(id: 7, username: "Zein", profilePicture: "Zein", location: "Tabriz, Iran"),
                     User(id: 8, username: "Daniel", profilePicture: "Daniel", location: "Yazd, Iran"),
                     User(id: 9, username: "Norman", profilePicture: "Norman", location: "Shiraz, Iran")]
