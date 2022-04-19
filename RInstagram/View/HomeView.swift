//
//  HomeView.swift
//  RInstagram
//
//  Created by Ali Aghamirbabaei on 4/18/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    @State private var dotSize: CGFloat = 0.0
    @State private var isReversed: Bool = false
    private let timer = Timer.publish(every: 0.2, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("BG")
                    .ignoresSafeArea()
                
                ScrollView(showsIndicators: false) {
                    StoryView(viewModel: viewModel)
                    
                    // MARK: - Line
                    GeometryReader { proxy in
                        let size = proxy.size
                        
                        Rectangle()
                            .stroke(.black.opacity(0.5), lineWidth: 0.22)
                            .frame(width: size.width, height: 1)
                    }
                    
                    PostView(viewModel: viewModel)
                }
            }
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
                        ZStack {
                            Image("Message")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .padding(.trailing, 5)
                            
                            Circle()
                                .fill(Color("Pink"))
                                .frame(width: dotSize, height: dotSize)
                                .offset(x: 8, y: -10)
                                .onReceive(timer) { _ in
                                    dotAnimation()
                                }
                        }
                    }
                }
            }
        }
    }
    
    private func dotAnimation() {
        if isReversed {
            withAnimation {
                dotSize -= 1
            }
        } else {
            withAnimation {
                dotSize += 1
            }
        }
        
        if dotSize > 7 {
            isReversed = true
        }
        
        if dotSize < 1{
            isReversed = false
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
                .environmentObject(HomeViewModel())
            //.preferredColorScheme(.dark)
        }
    }
}
