//
//  FriendsGivingApp.swift
//  FriendsGiving
//
//  Created by apple on 11.10.2023.
//

import SwiftUI

@main
struct FriendsGivingApp: App {
    
    @StateObject var friendsVM = FriendsViewModel()
    
    var body: some Scene {
        WindowGroup {
            ListView()
                .environmentObject(friendsVM)
        }
    }
}
