//
//  SafeAreaBootcamp.swift
//  SwiftUIsection3
//
//  Created by Arun_Skyraan on 24/09/22.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        //        ZStack {
        //            Color.blue
        //                .edgesIgnoringSafeArea(.all)  // old
        //
        //            VStack {
        //                Text("Hello, world!")
        //                Spacer()
        //            }
        //            .frame(width: .infinity, height: .infinity)
        //
        //        }
                
                
                ScrollView {
                    VStack {
                        Text("Hello Arun")
                            .font(.title)
                            .frame(maxWidth : .infinity, alignment: .leading)
                        
                        ForEach(0..<10) { index in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.white)
                                .frame(height: 150)
                                .shadow(color: .orange, radius: 10)
                                .padding(10)
                                .overlay(
                                    Text("\(index)")
                                        .font(.largeTitle)
                                )
                        }
                        
                    }
                }
                .background(
                    Color.green
                        .ignoresSafeArea(.all)) // new-------new------
        //                .edgesIgnoringSafeArea(.all) // old
               
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
