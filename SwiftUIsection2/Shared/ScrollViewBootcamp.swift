//
//  ScrollViewBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 11/09/22.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
//        ScrollView {
//        VStack {
//            ForEach(1..<15) { index in
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 300, height: 80)
//            }
//
//        }
//        }
        
//        ScrollView(.horizontal, showsIndicators: true) {
//            HStack {
//                ForEach(1..<15) { index in
//                    Rectangle()
//                        .fill(.green)
//                        .frame(width: 300, height: 80)
//                }
//
//            }
//        }
        
        ScrollView {
            LazyVStack {
                ForEach(1..<15) { index in
                    Text("rectangle : \(index)")
//                    Text("VStack View")
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack {
                        ForEach(0..<15) { index in
                            Text("HStack View")
                            Rectangle()
                                .fill(.white)
                                .frame(width: 300, height: 80)
                                .shadow(radius: 13)
                                .padding()
                        }
                            
                        }
                       
                    }
                    
//                    Rectangle()
//                        .fill(.white)
//                        .frame(width: 300, height: 80)
//                        .shadow(radius: 13)
//                        .padding()
                }

            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
