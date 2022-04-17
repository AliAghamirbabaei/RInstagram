//
//  HomeView.swift
//  RInstagram
//
//  Created by Ali Aghamirbabaei on 4/18/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BG")
                
                ScrollView {
                    
                }
            }
            .ignoresSafeArea()
            .navigationTitle("Instagram")
            .navigationBarTitleDisplayMode(.inline)
            // MARK: - Tabbar items
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        // Open Camera
                    } label: {
                        Image("Camera")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.leading, 5)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // Open Camera
                    } label: {
                        Image("Message")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.trailing, 5)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
            // .preferredColorScheme(.dark)
        }
    }
}
