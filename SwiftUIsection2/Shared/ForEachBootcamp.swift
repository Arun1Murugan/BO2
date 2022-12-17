//
//  ForEachBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 11/09/22.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data : [String] = ["hello", "hii", "hey", "whatsup"]
    let myString : String = "Arun"
    
    var body: some View {
        VStack {
//            ForEach(0..<10) { index in
//                Text("value : \(index)")
//                HStack{
//                Circle()
//                    .frame(width: 30, height: 30)
//                Text("value : \(index)")
//                }
//            }
            
            
//            ForEach(data.indices) { index in
//                Text("new item \(index)")
//            }
            
            
            ForEach(data.indices) { index in
                Text("index : \(index), element : \(data[index])")
            }
            
            
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
