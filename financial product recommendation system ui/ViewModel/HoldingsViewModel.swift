//
//  HoldingsViewModel.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 15/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import SwiftUI
import Foundation

class HoldingsViewModel: ObservableObject {
    @Published var holdings: [Holding] = []

    init(){
        getHoldings()
    }
    
    func getHoldings() {
        
        let accountNos = ["001213123", "001213124", "001213125", "001213126"]
        var hldgs: [Holding] = []
        
        for accountNo in accountNos {
            let hldg = Holding(accountNo: accountNo, bkCostLocl: 1000, bkCostBase: 1000, qty: 10)
            hldgs.append(hldg)
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.holdings = hldgs
        }
    }
}
