//
//  ProductRecommendationRow.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 14/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import SwiftUI
import Foundation

struct ProductRecommendationRow: View {

    @ObservedObject var productRecommendationViewModel = ProductRecommendationViewModel()
    
    let productRecommendationApi = ProductRecommendationApi()
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Today's News").font(.headline).padding(.leading, 15).padding(.top, 5)
            
            Group {
                if productRecommendationViewModel.productRecommendations.isEmpty {
                    EmptyView()
                } else {
                    ScrollView(.horizontal, showsIndicators: false) { // comment scrollview out and it works
                        HStack(alignment: .top, spacing: 0){
                            ForEach(productRecommendationViewModel.productRecommendations, id: \.name) { pr in
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

struct ProductRecommendationRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRecommendationRow()
    }
}
