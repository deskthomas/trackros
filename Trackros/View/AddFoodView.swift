//
//  AddFoodView.swift
//  Trackros
//
//  Created by Desmond Thomas on 9/14/26.
//

import SwiftUI
import SwiftData



struct AddFoodView: View {
    @Environment(\.modelContext) private var context
    @Query private var foodItems: [FoodItem]
    @State private var foodItem =  FoodItem(name: "", calories: 0, protein: 0, carbs: 0, fat: 0, date: Date())
    
    func addFood()
    {
        let foodItem = FoodItem(
            name: foodItem.name, calories: foodItem.calories, protein: foodItem.protein, carbs: foodItem.carbs, fat: foodItem.fat, date: foodItem.date)
        context.insert(foodItem)
    }
    
    func removeFood()
    {
        if foodItems.count != 0{
            context.delete(foodItems[foodItems.count - 1])
        } else {
            print("list empty")
        }
        
    }
    
    var body: some View {
        VStack{
            TextField("Food ", text: $foodItem.name){
                
            }
            .padding()
            
            TextField("Calories ", value: $foodItem.calories, formatter: NumberFormatter()){
                
            }
            .padding()
            
            TextField("Protein ", value: $foodItem.protein, formatter: NumberFormatter()){
                
            }
            .padding()
            
            TextField("Carbs ", value: $foodItem.carbs, formatter: NumberFormatter()){
                
            }
            .padding()
            
            TextField("Fat ", value: $foodItem.fat, formatter: NumberFormatter()){
                
            }
            .padding()
            
            DatePicker(selection: $foodItem.date){
                Text("Date")
            }
            .padding()
        }
        
        VStack{
            HStack{
                Button(action: {
                    addFood()
                }){
                    Label("Add Food", systemImage: "plus")
                }
                .padding(15)
                
                Button(action: {
                    removeFood()
                }){
                    Label("Remove Food", systemImage: "minus")
                }
                .padding(15)
            }
            
            VStack{
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
                }
            }
        }
    }

#Preview {
    AddFoodView()
}

