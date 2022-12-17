//
//  ShapesBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 11/09/22.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        
//        Circle()
//            .fill(Color.mint)
//            .foregroundColor(.yellow)
//            .stroke()
//            .stroke(Color.red)
//            .stroke(Color.red, lineWidth: 5)
//            .stroke(Color.red, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [10]))
//            .trim(from: 0.2, to: 1.0)
//        Ellipse()
//            .frame(width: 200, height: 100)
//        Capsule(style: .circular)
//            .frame(width: 200, height: 100)
        Rectangle()
//            .fill(
//                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.yellow, Color.green]), startPoint: .leading, endPoint: .trailing)
//
//            )
//            .fill(
//                RadialGradient(gradient: Gradient(colors: [Color.red, Color.purple]), center: .center, startRadius: 5, endRadius: 200)
//            )
            .fill(
                AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, angle: .degrees(90))
            )
            .frame(width: 300, height: 200)
        
          
        

            
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
            
    }
}
