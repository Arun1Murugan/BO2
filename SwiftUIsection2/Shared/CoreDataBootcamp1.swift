//
//  CoreDataBootcamp1.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 21/09/22.
//

import SwiftUI

struct CoreDataBootcamp1: View {
    @State var EntityArray : [NameEntity] = []
    var myObject2 = CoreDataViewModel()
    
    var body: some View {
        if EntityArray.count > 0 {
        List {
            ForEach(EntityArray, id: \.self) { index in
                Text("\(index.name ?? "")")
            }
        }
        } else {
            
            Text("Please wait")
                .onAppear(perform: {
                    DispatchQueue.main.async {
                        EntityArray =  myObject2.getAllDetails()
                    }
                })
        }
  

    }
}

struct CoreDataBootcamp1_Previews: PreviewProvider {
    static var previews: some View {
        CoreDataBootcamp1()
    }
}
