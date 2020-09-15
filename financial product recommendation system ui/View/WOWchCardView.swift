//
//  WOWchCardView.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 15/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import SwiftUI

struct WOWchCardView: View {
    
    @State var productName: String
    @State var maketName: String
    @State var ccy: String
    @State var price: Float64
    @State var gainloss: Float64
    @State var gainlossPercentage: Float64
    
    @State var friendsFollowing: Int
    @State var friendsHolding: Int
    

    
    var body: some View {
        return CardBorderView()
            .overlay(Text(productName).font(.largeTitle).bold().offset(x: 20, y: 10), alignment: .topLeading)
            .overlay(Text(maketName).font(.subheadline).bold().offset(x:20, y:50), alignment: .topLeading)
            .overlay(Text(String(price) + " " + ccy).bold().font(.headline).offset(x:-20, y:10), alignment: .topTrailing)
            .overlay(Text(String(gainloss) + " (" + String(gainlossPercentage) + "%)").foregroundColor(gainloss <= 0 ? Color.red: Color.green).font(.subheadline).offset(x:-20, y: 40), alignment: .topTrailing)
            .overlay(CardSubView(value: friendsFollowing, description: "Friends Following").offset(x: -20, y: -10), alignment: .bottomTrailing)
            .overlay(CardSubView(value: friendsHolding, description: "Friends Holding").offset(x: -20, y: -40), alignment: .bottomTrailing)
    }
}

struct CardBorderView: View {
    @State var isShowDetail = false
    
    var body: some View {
         return Rectangle().fill(Color.white)
            .frame(height: 150).animation(.default).padding(5)
           .overlay(
               RoundedRectangle(cornerRadius: 16)
                .stroke(Color(red: 0/255, green: 204/255, blue: 102/255), lineWidth: 2)
           ).onTapGesture {
               self.isShowDetail.toggle()
           }.sheet(isPresented: $isShowDetail) {
               CardDetailView(isPresented: self.$isShowDetail)
           }
    }
}

struct CardSubView: View {
    @State var value: Int
    @State var description: String
    
    var body: some View {
        return RoundedRectangle(cornerRadius: 16)
            .foregroundColor(Color(red: 0/255, green: 204/255, blue: 102/255))
            .frame(width: 200, height: 25)
            .overlay(RoundedRectangle(cornerRadius: 16).foregroundColor(Color.white).frame(width: 50, height: 15, alignment: .topLeading).offset(x: -70))
            .overlay(HStack{
                Text(String(value)).font(.subheadline).bold()
                .foregroundColor(Color.black).frame(width: 55)
                    
                Text(description).font(.subheadline).bold().foregroundColor(Color.white).frame(width: 135, alignment: .topLeading)
                    
        })
    }
}

struct CardDetailView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Text("This is Detail View")
            Text("Click Me TO Close").onTapGesture {
                self.isPresented = false
            }
        }
    }
}

struct WOWchCardView_Previews: PreviewProvider {
    static var previews: some View {
        WOWchCardView(productName: "APPL", maketName: "NASDAQ", ccy: "USD", price: 129, gainloss: 11.23, gainlossPercentage: 1.1, friendsFollowing: 1, friendsHolding: 10000)
    }
}
