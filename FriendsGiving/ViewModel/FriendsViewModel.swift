//
//  FriendsViewModel.swift
//  FriendsGiving
//
//  Created by apple on 11.10.2023.
//

import Foundation

class FriendsViewModel: ObservableObject {
    
    @Published var friends: [Friend] = []
}
