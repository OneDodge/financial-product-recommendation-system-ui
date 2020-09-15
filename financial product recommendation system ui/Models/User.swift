//
//  User.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 14/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import SwiftUI

struct User: Hashable, Codable {
    var id: Int
    var name: String
    var age: Int
    var gender: Gender
    var maritalStatus: MaritalStatus
    var haveChild: YesNo
    var education: Education
    
    enum Education: String, CaseIterable, Codable, Hashable {
        case primary = "PRIMARY"
        case secondary = "SECONDARY"
        case university = "UNIVERSITY"
        case postgraduate = "POSTGRADUATE"
    }
    
    enum YesNo: String, CaseIterable, Codable, Hashable {
        case y = "Y"
        case n = "N"
    }
    
    enum MaritalStatus: String, CaseIterable, Codable, Hashable {
        case single = "SINGLE"
        case married = "MARRIED"
        case divorced = "DIVORCED"
        case widowed = "WIDOWED"
    }
    
    enum Gender: String, CaseIterable, Codable, Hashable {
        case m = "M"
        case f = "F"
    }
}

