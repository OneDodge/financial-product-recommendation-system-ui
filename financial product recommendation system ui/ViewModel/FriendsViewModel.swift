//
//  FriendsViewModel.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 15/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import SwiftUI
import Foundation

class FriendsViewModel: ObservableObject {
    @Published var friends: [Friend] = []

    init(){
        getFriends()
    }
    
    func getFriends() {
        
        let names = ["Anna", "Alex", "Brian", "Jack"]
        var fds: [Friend] = []
        for name in names {
            let f = Friend(name: name)
            fds.append(f)
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.friends = fds
        }
    }
}
