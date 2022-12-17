//
//  ConditionalBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 11/09/22.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var isIt : Bool = false
    @State var isLoading : Bool = false
    
    var body: some View {
        VStack(spacing : 20) {
            
            Button(action: {
                
//                isIt.toggle()
                isLoading.toggle()
                
            }, label: {
//                Text("\(isIt.description)")
                Text("is loading : \(isLoading.description)")
            })

            
//            if isIt {
//                Circle()
//                    .frame(width: 100, height: 100)
//            } else {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//
            
            if isLoading {
                ProgressView()
            
            }
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
