//
//  SpacerBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 24/09/22.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
        HStack(spacing : 0) {
//            Spacer()
//                .frame(height : 10)
//                .background(.gray)
//           Rectangle()
//                .fill(.purple)
//                .frame(width: 100, height: 100)
//            Spacer()
//                .frame(height : 10)
//                .background(.gray)
//
//            Rectangle()
//                .fill(.yellow)
//                 .frame(width: 100, height: 100)
//            Spacer()
//                .frame(height : 10)
//                .background(.gray)
//
//            Rectangle()
//                .fill(.green)
//                 .frame(width: 100, height: 100)
//
//            Spacer()
//                .frame(height : 10)
//                .background(.gray)
            
            
            Image(systemName: "xmark")
            Spacer()
            Image(systemName: "gear")
        }
        .font(.title)
        .padding(.horizontal)
        
        
        Spacer()
            .frame(width: 10)
            .background(.green)
        }
    
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
