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
    
    func addFood(){
        let foodItem = FoodItem(
            name: foodItem.name, calories: foodItem.calories, protein: foodItem.protein, carbs: foodItem.carbs, fat: foodItem.fat, date: foodItem.date)
        context.insert(foodItem)}
    
    var body: some View {
        VStack(alignment: .trailing){
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
        
        List{
            Button(action: {
                addFood()
            }){
                Label("Add Food", systemImage: "plus")
            }
            .padding(15)
            
            VStack{
                    ScrollView(.horizontal){
                        ForEach(foodItems){
                            foodItem in
                            HStack{
                                
                                Text(foodItem.name)
                                    .fixedSize()
                                    .bold()
                                Text("Cal: \(foodItem.calories)")
                                    .monospaced(true)
                                    .fixedSize()
                                Text("P: \(foodItem.protein)")
                                    .fixedSize()
                                Text("C: \(foodItem.carbs)")
                                    .fixedSize()
                                Text("F: \(foodItem.fat)")
                                    .fixedSize()
                                Spacer()
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

