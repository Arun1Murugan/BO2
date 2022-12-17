//
//  StackBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 11/09/22.
//

import SwiftUI

struct StackBootcamp: View {
    var body: some View {
//        VStack(alignment: .leading, content: {
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 200, height: 70)
//
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 150, height: 70)
//
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100, height: 70)
//        })
//        HStack(alignment: .center, content: {
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 200, height: 70)
//
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 150, height: 70)
//
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100, height: 70)
//        })
        ZStack(alignment: .center, content: {
            Rectangle()
                .fill(.blue)
                .frame(width: 300, height: 150)
            
            Rectangle()
                .fill(.yellow)
                .frame(width: 200, height: 100)
            
            Rectangle()
                .fill(.green)
                .frame(width: 80, height: 50)
        })
    }
}

struct StackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StackBootcamp()
    }
}
