//
//  RInstagramApp.swift
//  RInstagram
//
//  Created by Ali Aghamirbabaei on 4/18/22.
//

import SwiftUI

@main
struct RInstagramApp: App {
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Quicksand-Bold", size: 24)!]
    }
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(HomeViewModel())
        }
    }
}
