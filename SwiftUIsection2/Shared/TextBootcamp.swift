//
//  TextBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 10/09/22.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hellow world! swift is powerful language")
//            .font(.title)
//            .fontWeight(.medium)
            .foregroundColor(Color.blue)
            .underline(true, color: .teal)
            .strikethrough(true, color: .pink)
            .font(.system(size: 25, weight: .semibold, design: .serif))
            .multilineTextAlignment(.center)
            .foregroundColor(.mint)
            .frame(width: 300, height: 60)
            .minimumScaleFactor(0.2)
        
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
