//
//  AppView.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 14/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import SwiftUI


struct AppView: View {
    var body: some View {
        TabView {
            HomeScreen().tabItem{
                Image(systemName: "1.circle")
                Text("Today").font(.subheadline)
            }.tag(0)
            
            YourPortfolioView().tabItem {
                Image(systemName: "2.circle")
                Text("Portfolio").font(.subheadline)
            }.tag(1)
            
            SearchProductView().tabItem {
                Image(systemName: "3.circle")
                Text("Products").font(.subheadline)
            }.tag(2)
            
            FriendsView().tabItem{
                Image(systemName: "4.circle")
                Text("friends").font(.subheadline)
            }.tag(3)
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
