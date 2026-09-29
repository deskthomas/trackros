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
    @State private var selectedDate: Date = Date()
    @State private var dailyTotal: Int = 0
    
    
    
    
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
            HStack{
                DatePicker(selection: $selectedDate, displayedComponents: .date){
                    Text("Date")
                        .datePickerStyle(GraphicalDatePickerStyle())
                }
                
                Button(action: {
                    
                    dailyTotal = foodItem.sumUserDateFoods(foodItems: foodItems, selectedDate: selectedDate)
                    print(selectedDate)
                }){
                    Label("View Daily Total", systemImage: "eye")
                }
                
                
                
            }
            
            VStack(alignment: .leading){
                Text("Totals")
                    .bold()
                Text("Calories: \(foodItem.sumCalories(foodItems: foodItems))")
                Text("Protein: \(foodItem.sumProtein(foodItems: foodItems))")
                Text("Carbs: \(foodItem.sumCarbs(foodItems: foodItems))")
                Text("Fat: \(foodItem.sumFat(foodItems: foodItems))")
                Text("Daily Calorie Total: \(dailyTotal)")
            }
            
        }
        
    }
}

#Preview {
    ViewFoodView()
}
