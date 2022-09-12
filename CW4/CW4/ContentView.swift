//
//  ContentView.swift
//  CW4
//
//  Created by Bo3lwah on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var myGrocery = ["Kinder" , "Doritos" , "Pepsi" , "Indomie" , "Tomato"]
    @State var  item = ""
   
   // @State var  randomItem1 = ""
    var body: some View {
        VStack {
            
            
            
            List (myGrocery , id: \.self) {item in
                HStack {
                    Image (item)
                        .resizable()
                        .frame(width: 70, height: 70)
                    
                    Text(item)
                        .font(.title)
                        }
            }
            HStack {
                Button (action: {myGrocery.append(item)
                }) {Image(systemName: "plus")
                        .foregroundColor(Color.indigo)
                        .font(.title)
                    
                }
                TextField  ("add item" ,text: $item)
                Button( action: {myGrocery.remove(at: 0) }){
                    Image(systemName: "minus")
                        .foregroundColor(Color.indigo)
                        .font(.title)}
              
                Button ( action: {
                    myGrocery.randomElement().append(item)
                    
                                })
              { Image(systemName: "questionmark.circle.fill")}
                     .font(.title)}
                
                    
                
            }
            .padding()
            
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
