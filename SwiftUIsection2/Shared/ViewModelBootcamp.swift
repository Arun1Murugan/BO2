//
//  ViewModelBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 18/09/22.
//

import SwiftUI

struct FruitModel: Identifiable{
    let id :  String = UUID().uuidString
    let name : String
    let count : Int
}


class FruitViewModel: ObservableObject {
    
    @Published var fruitArray : [FruitModel] = []
    
    func getFruit() {
        let f1 = FruitModel(name: "Peach", count: 20)
        let f2 = FruitModel(name: "Mango", count: 10)
        
        fruitArray.append(f1)
        fruitArray.append(f2)
        
    }
    
    func deleteFruit(index : IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    
    
}


struct ViewModelBootcamp: View {
    
    
//    @State var fruitAray : [FruitModel] = [
//        FruitModel(name: "Applr", count: 3),
//        FruitModel(name: "Orange", count: 5),
//        FruitModel(name: "Banana", count: 1)
//    ]
    
    @ObservedObject var fruitViewModel1 : FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruitViewModel1.fruitArray) { fruit in
                    HStack {
                        Text("\(fruit.count)")
                        Text(fruit.name)
                    }
                    
                    
                }
                .onDelete(perform: fruitViewModel1.deleteFruit)
//                .listStyle(.insetGrouped)
                .onAppear(perform: {
                    fruitViewModel1.getFruit()
                })
                    
            }
        }
    }
    

}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
