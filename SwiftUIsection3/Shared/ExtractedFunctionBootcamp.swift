//
//  ExtractedFunctionBootcamp.swift
//  SwiftUIsection3
//
//  Created by Arun_Skyraan on 24/09/22.
//

import SwiftUI

struct ExtractedFunctionBootcamp: View {
    
    @State var backgroundColor : Color = .pink
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer : some View {
        VStack {
            Text("Hello, World!")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("press me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.purple)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed() {
        backgroundColor = .gray
    }
}

struct ExtractedFunctionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionBootcamp()
    }
}
