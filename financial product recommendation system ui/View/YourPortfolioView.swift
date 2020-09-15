//
//  YourPortfolioView.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 15/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import SwiftUI

struct YourPortfolioView: View {
    
    @ObservedObject var holdingsViewModel = HoldingsViewModel()
    
    let subViewNames = ["Portfolio Analysis", "All holdings", "Mutual Funds", "Structured notes", "Bonds", "Equities"]
    
    var body: some View {
//        List{
//        Group {
        ScrollView{
            VStack(alignment: .center){
                Text("portfolio value").font(.subheadline)
                Text("HKD 987,543,346.00").font(.largeTitle)
                Spacer()
                Text("Invested amount HKD 87,654.00")
                Text("Unrealised gain +HKD 897,453,124.00")
            }.frame(minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .center
            ).background(Color.blue.edgesIgnoringSafeArea(.all))
//        }
//            ScrollView(.horizontal, showsIndicators: false) { // comment scrollview out and it works
//                HStack(alignment: .top, spacing: 0){
////                    List(subViewNames) { svn in
////                        Text("svn")
////                    }
//                }
//            }
        }
//            Text("HKD 57682.18")
//            Text("as of 14 9 month 2020 ?")
//
//            Text("Investment")
//            Text("Deposits")
//        }
    }
}


//struct InvestmentsItem: View {
//    var pr: ProductRecommendation
//
//    var body: some View {
//        VStack(alignment: .leading) {
//            Image("turtlerock")
//                .resizable()
//                .frame(width: 120, height: 120)
//                .clipShape(Circle())
//                .overlay(
//                    Circle().stroke(Color.white, lineWidth: 4))
//                .shadow(radius: 10)
//            Text(pr.name)
//                .font(.caption)
//        }
//        .padding(.leading, 15)
//    }
//}

struct YourPortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        YourPortfolioView()
    }
}
