//
//  SearchProductView.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 15/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import SwiftUI

struct SearchProductView: View {
    
    @ObservedObject var productsViewModel = ProductsViewModel()
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            VStack {
                 HStack {
                    Text("Products") .font(.system(size: 40, weight: .black, design: .rounded))
                   }.padding()
                   
                SearchBarView(text: $searchText)
                   .padding(.top, -30)
               
                List(productsViewModel.products.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) }), id: \.name) { product in
                   Text(product.name)
                }
            }
        }
    }
}

struct SearchProductView_Previews: PreviewProvider {
    static var previews: some View {
        SearchProductView()
    }
}
