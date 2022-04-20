//
//  DirectsView.swift
//  RInstagram
//
//  Created by Ali Aghamirbabaei on 4/20/22.
//

import SwiftUI

struct DirectsView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var dotSize: CGFloat = 0.0
    @State private var isReversed: Bool = false
    private let timer = Timer.publish(every: 0.2, on: .main, in: .common).autoconnect()
    var direct: Direct
    var user: [User]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ZStack {
                    if direct.isUnreadMessage {
                        Image(mockedUsers[direct.userID].profilePicture)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60)
                            .cornerRadius(17)
                            .shadow(color: .black.opacity(0.15), radius: 12, x: 0, y: 13)
                    } else {
                        Image(mockedUsers[direct.userID].profilePicture)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60)
                            .cornerRadius(20)
                    }
                    
                    if direct.isUserOnline {
                        Circle()
                            .fill(.green)
                            .frame(width: dotSize, height: dotSize)
                            .offset(x: 25, y: 25)
                            .onReceive(timer) { _ in
                                dotAnimation()
                            }
                    }
                }
                
                VStack(alignment: .leading) {
                    Text(mockedUsers[direct.userID].username)
                        .font(.fontUtil(.bold, size: 24))
                        .padding(.bottom, 3)
                    
                    Text(direct.message)
                        .font(.fontUtil(.regular, size: 18))
                        .foregroundColor(.gray)
                        .lineLimit(1)
                }
                .padding()
                
                Spacer()
                
                if direct.isUnreadMessage {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("Pink"))
                        .frame(width: 30, height: 30)
                        .overlay(
                            Text("\(direct.unreadCount)")
                                .font(.fontUtil(.regular, size: 16))
                                .foregroundColor(.white)
                        )
                        .padding(.trailing)
                }
            }
            .padding(.horizontal)
        }
        .background(
            VStack {
                if direct.isUnreadMessage {
                    Rectangle()
                        .fill(colorScheme == .light ? .white : .black)
                        .cornerRadius(12, corners: [.topRight, .topLeft, .bottomRight])
                        .padding(.trailing)
                        .shadow(color: .black.opacity(0.15), radius: 12, x: 0, y: 13)
                }
            }
        )
        .padding(.trailing)
        .padding(.bottom, 7)
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
        
        if dotSize > 13 {
            isReversed = true
        }
        
        if dotSize < 5 {
            isReversed = false
        }
    }
}

struct DirectsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("BG")
            
            DirectsView(direct: mockedDirects[7], user: mockedUsers)
                .preferredColorScheme(.dark)
        }
    }
}
