//
//  RInstagramApp.swift
//  RInstagram
//
//  Created by Ali Aghamirbabaei on 4/18/22.
//

import SwiftUI
import SwiftUIPager

@main
struct RInstagramApp: App {
    @StateObject var page: Page = .first()
    var views = Array(0...1)
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.font: UIFont(name: "Quicksand-Bold", size: 24)!]
    }
    
    var body: some Scene {
        WindowGroup {
            GeometryReader { proxy in
                let size = proxy.size
                
                Pager(page: self.page, data: self.views, id: \.self) {_ in
                    DirectView()
                        .environmentObject(DirectViewModel())
                    
                    HomeView()
                        .environmentObject(HomeViewModel())
                }
                .frame(width: size.width, height: size.height)
            }
            .ignoresSafeArea()
        }
    }
}
