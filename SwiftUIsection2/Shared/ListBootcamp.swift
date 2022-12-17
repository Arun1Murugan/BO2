//
//  ListBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 11/09/22.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits : [String] = ["Apple", "Orange", "Mango", "Banana", "Peach"]
    @State var veggies : [String] = ["Tomato", "Onion", "Carrot"]
    
    var body: some View {
        
        NavigationView {
            
            List {
                Section(
                    header:
                        HStack {
                    Text("fruits")
                    Image(systemName : "flame.fill")
                    
                        }.font(.headline)
                    ){
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    
                    .onDelete(perform: { index in
                        delete(index: index)
                        //                   fruits.remove(atOffsets: index)
                    })
                    
                    .onMove(perform: { indices, newOff in
                        move(indices: indices, newOff: newOff)
                        //                        fruits.move(fromOffsets: indices, toOffset: newOff)
                        
                    })
        
                }
                Section(header: Text("Veggies"), content: {
                    ForEach(veggies, id: \.self) { veg in
                        Text(veg)
                    }
                })
            }
            .accentColor(.pink)
//            .listStyle(GroupedListStyle())
//            .navigationBarItems(leading: EditButton(),trailing : addButton)
            .navigationTitle("GROCERY ITEMS")
            
        }
        .accentColor(.pink)
    }
    var addButton : some View{
        Button(action: {
            add()
        }, label: {
            Text("Add")
        })
    }
    
    func delete(index : IndexSet){
        fruits.remove(atOffsets: index)
    }
    
    func move(indices : IndexSet, newOff : Int) {
        fruits.move(fromOffsets: indices, toOffset: newOff)
    }
    func add() {
        
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
