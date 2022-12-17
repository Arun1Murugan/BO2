//
//  AnimationBootcamp.swift
//  SwiftUIsection3
//
//  Created by Arun_Skyraan on 09/10/22.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {
            Button("Click") {
                withAnimation(Animation.linear.repeatCount(20, autoreverses: true)) {
                    isAnimated.toggle()
                }
            }
            .foregroundColor(.white)
            .background(Color.purple)
            .padding()
    
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 1 : 10)
                .fill(isAnimated ? Color.mint : Color.orange)
                .frame(width: isAnimated ? 50 : 300, height: isAnimated ? 50 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
