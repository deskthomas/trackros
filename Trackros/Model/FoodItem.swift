//
//  FoodItem.swift
//  Trackros
//
//  Created by Desmond Thomas on 9/14/26.
//

import Foundation
import SwiftData

@Model
class FoodItem: Identifiable{
    var name: String
    var calories: Int
    var protein: Int
    var carbs: Int
    var fat: Int
    var date: Date
    
    init(name: String, calories: Int, protein: Int, carbs: Int, fat: Int, date: Date){
        self.name = name
        self.calories = calories
        self.protein = protein
        self.carbs = carbs
        self.fat = fat
        self.date = date
    }
}
