//
//  JournalView.swift
//  Trackros
//
//  Created by Desmond Thomas on 9/12/26.
//

import SwiftUI
import SwiftData

struct JournalView: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
    
        VStack(alignment: .leading, spacing: 0){
        
           
            NavigationStack{
                
                
                VStack(alignment: .leading, spacing: 8){
                    
                   NavigationLink(destination: AddFoodView()){
                     Text("Trackros")
                    }
                        .bold()
                    //.padding()
                    
                    NavigationLink(destination: ViewFoodView()){
                        Text("View")
                    }
                    // .padding()
                    
                    NavigationLink(destination: AddFoodView()){
                        Text("Add")
                    }
                    // .padding()
                    
                    NavigationLink(destination: AddFoodView()){
                        Text("Edit")
                    }
                    //.padding()
                    
                    
                    NavigationLink(destination: AddFoodView()){
                        Text("Remove").foregroundColor(.red)
                    }
                    //.padding()
                    
                
                }
            }
            
                
        }
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .center
            )
        
    }
        
    
    
 
}

#Preview {
    JournalView()
}
