//
//  RecommendationRow.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 14/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import SwiftUI

struct RecommendationRow: View {
    
   @ObservedObject var productRecommendationViewModel = ProductRecommendationViewModel()
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Today's News").font(.headline).padding(.leading, 15).padding(.top, 5)
            
            Group {
                if productRecommendationViewModel.productRecommendations.isEmpty {
                    EmptyView()
                } else {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 0){
                            ForEach(Array(productRecommendationViewModel.productRecommendations.prefix(3)), id: \.name) { pr in
                                ProductRecommendationItem(pr: pr)
                            }
                        }
                    }
                }
            }
            .onAppear {
                self.productRecommendationViewModel.getProductRecommendations()
            }
        }.frame(height: 185)
    }
}

struct ProductRecommendationItem: View {
    var pr: ProductRecommendation
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("turtlerock")
                .resizable()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            Text(pr.name)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct RecommendationRow_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationRow()
    }
}
