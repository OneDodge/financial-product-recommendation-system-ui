//
//  FriendsView.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 15/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import SwiftUI

struct FriendsView: View {
    
     @ObservedObject var friendsViewModel = FriendsViewModel()
    
    var body: some View {
        VStack(alignment: .leading){
            List(self.friendsViewModel.friends, id: \.name) { fd in
                                         FriendItem(fd: fd)
            }
        }
    }
}

struct FriendItem: View {
    var fd: Friend
    
    var body: some View {
        HStack {
            Image("turtlerock")
                .resizable()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 4))
                .cornerRadius(40)
            VStack(alignment: .leading){
                Text(fd.name)
                Text("Head of Finance").font(.subheadline)
            }
            
        }
        .padding(.leading, 15)
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
