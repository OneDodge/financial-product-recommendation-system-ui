//
//  Products.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 15/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import SwiftUI

struct Product: Hashable, Codable {
    var name: String
    
    var threeYrReturn: Float64
    var standardDeviation: Float64
    var dividend: Float64
    var assetClass: String
    
    init(name: String, threeYrReturn: Float64, standardDeviation: Float64, dividend: Float64, assetClass: String) {
        self.name = name
        self.threeYrReturn = threeYrReturn
        self.standardDeviation = standardDeviation
        self.dividend = dividend
        self.assetClass = assetClass
    }
}

