//
//  ViewFoodView.swift
//  Trackros
//
//  Created by Desmond Thomas on 9/21/26.
//

import SwiftUI
import SwiftData

struct ViewFoodView: View {
    @Query private var foodItems: [FoodItem]
    @State private var foodItem =  FoodItem(name: "", calories: 0, protein: 0, carbs: 0, fat: 0, date: Date())
    
  
    //var totalCalories: (() -> Int)
    
    
    

    
    
    
    var body: some View {
       
        VStack(alignment: .leading){
            ScrollView(.vertical){
                ScrollView(.horizontal){
                    ForEach(foodItems){
                        foodItem in
                        VStack(alignment: .leading){
                            Text(foodItem.name)
                                .fixedSize()
                                .bold()
                            HStack{
                                Text("Cal: \(foodItem.calories)")
                                    .monospaced(true)
                                    .fixedSize()
                                Text("P: \(foodItem.protein)")
                                    .monospaced(true)
                                    .fixedSize()
                                Text("C: \(foodItem.carbs)")
                                    .monospaced(true)
                                    .fixedSize()
                                Text("F: \(foodItem.fat)")
                                    .monospaced(true)
                                    .fixedSize()
                                Spacer()
                                //.padding()
                            }
                        }
                        .padding()
                    }
                }
            }
            
            VStack(alignment: .leading){
                Text("Totals")
                    .bold()
                Text("Calories: \(foodItem.sumCalories(foodItems: foodItems))")
                Text("Protein: \(foodItem.sumProtein(foodItems: foodItems))")
                Text("Carbs: \(foodItem.sumCarbs(foodItems: foodItems))")
                Text("Fat: \(foodItem.sumFat(foodItems: foodItems))")
            }
    
            }
        
    }
}

#Preview {
    ViewFoodView()
}
