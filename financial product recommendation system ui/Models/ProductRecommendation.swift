//
//  ProductRecommendation.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 14/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

struct ProductRecommendation: Hashable, Codable {
    
    var name: String
    var probability: Float64
    
    private enum CodingKeys : String, CodingKey {
        case name = "product_name", probability = "probability (%)"
    }
}
