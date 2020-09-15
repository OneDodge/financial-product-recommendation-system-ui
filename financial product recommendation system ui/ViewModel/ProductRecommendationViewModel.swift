//
//  ProductRecommendationViewModel.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 14/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//
import Foundation

class ProductRecommendationViewModel: ObservableObject {
    @Published var productRecommendations: [ProductRecommendation] = []

    init(){
        getProductRecommendations()
    }
    
    func getProductRecommendations() {
        let productRecommendationApi = ProductRecommendationApi()
        
        productRecommendationApi.GetProductRecommendationResponse(){
            prs in
            DispatchQueue.main.async {
                self.productRecommendations = prs
            }
        }
    }
}
