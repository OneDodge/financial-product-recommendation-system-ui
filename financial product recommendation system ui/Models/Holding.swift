//
//  Holding.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 15/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import Foundation

struct Holding: Hashable, Codable {
    var accountNo: String
    
    var bkCostLocl: Int
    var bkCostBase: Int
    var qty: Int
    
    init(accountNo: String, bkCostLocl: Int, bkCostBase: Int, qty: Int) {
        self.accountNo = accountNo
        self.bkCostLocl = bkCostLocl
        self.bkCostBase = bkCostBase
        self.qty = qty
    }
}

