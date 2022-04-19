//
//  PostView.swift
//  RInstagram
//
//  Created by Ali Aghamirbabaei on 4/19/22.
//

import SwiftUI

struct PostView: View {
    var viewModel: HomeViewModel
    
    var body: some View {
        VStack {
            ForEach(viewModel.posts, id: \.id) { post in
                PostsView(post: post, user: mockedUsers)
                    .padding(.bottom)
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(viewModel: HomeViewModel())
    }
}
