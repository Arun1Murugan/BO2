//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 24/09/22.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)

            
            Text("This is arum from tirupur, i have completed degree in under graduate. hello everyone what are you doing today")

        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3),
                        radius: 10,
                        x: 0.0,
                        y: 10)
        )
        .padding(.horizontal, 20)
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
