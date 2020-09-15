//
//  TabView.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 14/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import SwiftUI

struct TabView: View {
    var body: some View {
        TabView {
            RecommendationRow().tabItem{
                Image(systemName: "list.dash")
                Text("Today").font(.subheadline)
            }
            
            ProductRecommendationRow().tabItem{
                Image(systemName: "square.and.pencil")
                Text("Games")
            }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
