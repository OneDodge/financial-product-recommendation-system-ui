//
//  HomeScreen.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 14/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import SwiftUI
import Foundation
struct HomeScreen: View {
    
    @ObservedObject var productRecommendationViewModel = ProductRecommendationViewModel()
    
    var body: some View {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        
        return List {
//            Spacer()
            Text("\(Date(), formatter: formatter)")
            HStack{
                Text("WOWch List").bold().font(.largeTitle)
                Spacer()
                Image("turtlerock").resizable()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            }
            ForEach(self.productRecommendationViewModel.productRecommendations.prefix(5), id: \.name) { (pr) in
                
                WOWchCardView(productName: pr.name, maketName: "NASDAQ", ccy: "USD", price: 121, gainloss: -12, gainlossPercentage: 1.2, friendsFollowing: 1, friendsHolding: 1 )
            }
        }
//        .colorInvert()
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
