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
    
    func sumCalories(foodItems: [FoodItem]) -> Int{
        var totalCals: Int = 0
        for i in (0..<foodItems.count){
            totalCals = totalCals + foodItems[i].calories
        }
    
       return totalCals
    }
    
    func sumProtein(foodItems: [FoodItem]) -> Int{
        var totalProtein: Int = 0
        for i in (0..<foodItems.count){
            totalProtein = totalProtein + foodItems[i].protein
        }
    
       return totalProtein
    }
    
    func sumCarbs(foodItems: [FoodItem]) -> Int{
        var totalCarbs: Int = 0
        for i in (0..<foodItems.count){
            totalCarbs = totalCarbs + foodItems[i].carbs
        }
    
       return totalCarbs
    }
    
    func sumFat(foodItems: [FoodItem]) -> Int{
        var totalFat: Int = 0
        for i in (0..<foodItems.count){
            totalFat = totalFat + foodItems[i].fat
        }
    
       return totalFat
    }
    
   
    
}
