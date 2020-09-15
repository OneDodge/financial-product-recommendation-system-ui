//
//  Friend.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 15/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import Foundation

struct Friend: Hashable, Codable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
