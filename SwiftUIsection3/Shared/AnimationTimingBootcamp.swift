//
//  AnimationTimingBootcamp.swift
//  SwiftUIsection3
//
//  Created by Arun_Skyraan on 09/10/22.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimated: Bool = false
    let timing: Double = 4.0
    var body: some View {
        VStack {
            Button("click") {
                isAnimated.toggle()
            }
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.orange)
                .frame(width: isAnimated ? 30 : 300, height: 50)
                .animation(.spring(response: 1.0, dampingFraction: 0.7, blendDuration: 1.0))
//                .animation(Animation.linear(duration: timing))
//            RoundedRectangle(cornerRadius: 10)
//                .fill(Color.orange)
//                .frame(width: isAnimated ? 50 : 300, height: 50)
//                .animation(Animation.easeIn(duration: timing))
//            RoundedRectangle(cornerRadius: 10)
//                .fill(Color.orange)
//                .frame(width: isAnimated ? 50 : 300, height: 50)
//                .animation(Animation.easeInOut(duration: timing))
//            RoundedRectangle(cornerRadius: 10)
//                .fill(Color.orange)
//                .frame(width: isAnimated ? 50 : 300, height: 50)
//                .animation(Animation.easeOut(duration: timing))
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
