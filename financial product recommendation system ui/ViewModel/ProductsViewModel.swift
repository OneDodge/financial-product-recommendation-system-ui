//
//  ProductsViewModel.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 15/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import SwiftUI

class ProductsViewModel: ObservableObject {
    @Published var products: [Product] = []

    init(){
        getProducts()
    }
    
    func getProducts() {
        
        let names = ["U62300", "U62301", "U62302", "U62303"]
        var products: [Product] = []
        
        for productName in names {
            let product = Product(name: productName, threeYrReturn: 1.11, standardDeviation: 2.22, dividend: 3.33, assetClass: "quity Developed Market")
            products.append(product)
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.products = products
        }
    }
}
