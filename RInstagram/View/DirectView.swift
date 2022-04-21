//
//  DirectView.swift
//  RInstagram
//
//  Created by Ali Aghamirbabaei on 4/20/22.
//

import SwiftUI

struct DirectView: View {
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var viewModel: DirectViewModel
    @State private var searchTextField: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("BG")
                    .ignoresSafeArea()
                
                VStack {
                    ScrollView(showsIndicators: false) {
                        HStack {
                            Text("messages")
                                .font(.fontUtil(.bold, size: 32))
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        ForEach(viewModel.directMessages, id: \.id) {direct in
                            DirectsView(direct: direct, user: mockedUsers)
                        }
                    }
                }
            }
            // MARK: Tabbar items
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Image("Search")
                            .resizable()
                            .frame(width: 25, height: 25)
                        
                        TextField("search", text: $searchTextField)
                    }
                    .padding(3)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color("SearchBar"))
                            .frame(height: 35)
                    )
                    .frame(width: 300)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image("NewDirect")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                }
            }
        }
    }
}

struct DirectView_Previews: PreviewProvider {
    static var previews: some View {
        DirectView()
            .environmentObject(DirectViewModel())
    }
}
