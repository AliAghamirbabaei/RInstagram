//
//  DirectViewModel.swift
//  RInstagram
//
//  Created by Ali Aghamirbabaei on 4/20/22.
//

import Foundation

class DirectViewModel: ObservableObject {
    // MARK: - Mocked Data
    @Published public var directMessages = [Direct]()
    
    init() {
        directMessages = mockedDirects
    }
}
