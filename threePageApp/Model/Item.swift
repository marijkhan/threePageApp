//
//  Item.swift
//  threePageApp
//
//  Created by Marij on 24/10/2018.
//  Copyright © 2018 Marij. All rights reserved.
//

import Foundation

struct FoodItem {
    let name: String
    let price: Int = 100
    
    init (_ name: String) {
        self.name = name
    }
//    let type: ItemType
/*
    enum ItemType: String {
        case chicken
        case burger
        case fries
        case drink
        case addOn
        case iceCream
    }
 */
}
