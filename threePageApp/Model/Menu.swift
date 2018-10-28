//
//  Menu.swift
//  threePageApp
//
//  Created by Marij on 24/10/2018.
//  Copyright © 2018 Marij. All rights reserved.
//

import Foundation

struct Menu {
    let menuItems : [String:[FoodItem]] = [
        "Chicken": [FoodItem("Spicy Chicken Tenders"), FoodItem("Herbal Chicken")],
        "Burger": [FoodItem("McCrispy"), FoodItem("BigMac")],
        "Fries": [FoodItem("Garlic Mayo Fries"), FoodItem("BBQ Fries")],
        "Drinks": [FoodItem("Coca Cola"), FoodItem("Sprite")],
        "Add Ons": [FoodItem("Extra Cheese"), FoodItem("Cookie")],
        "Ice Cream": [FoodItem("Chocolate Sundae"), FoodItem("Strawberry Sundae")]
    ]
    

}
