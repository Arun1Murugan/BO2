//
//  GenericsBootcamp.swift
//  SwiftUIsection3
//
//  Created by Arun_Skyraan on 04/10/22.
//

import SwiftUI

struct GenericsBootcamp: View {
    
    @StateObject private var gvm = GenericsViewModelClass()
    
    var body: some View {
        VStack {
            ForEach(gvm.dataArray, id: \.self) { index in
                Text("\(index)")
                    .onTapGesture {
                        gvm.removeDataFromDataArray()
                    }
            }
        }
    }
}

struct GenericsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GenericsBootcamp()
    }
}


class GenericsViewModelClass: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init(){
        dataArray = ["Arun", "Ganesh", "Kalai", "Sowmiya", "Karthick"]
    }
    
    func removeDataFromDataArray(){
        dataArray.removeAll()
    }
    
}
