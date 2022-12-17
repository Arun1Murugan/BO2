//
//  SliderBootcamp.swift
//  SwiftUIsection3
//
//  Created by Arun_Skyraan on 27/09/22.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue : Double = 10
    @State var fontSize : Int = 30
    
    var body: some View {
        
        VStack {
            Text("Arun")
                .font(.system(size: CGFloat(fontSize)))
            
            Slider(value: $sliderValue,
                   in: 25...50,
                   step: 2.0,
                   onEditingChanged: { (_) in
                fontSize = Int(sliderValue)
            },
                   minimumValueLabel: Text("A-")
                .bold(),
                   maximumValueLabel: Text("A+")
                .bold(),
                   label: {
                Text("")
                
            })
            .accentColor(.gray)
            .padding(.vertical, 15)
            .padding(.horizontal, 8)
            .background(
                Color.white
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.3),
                            radius: 10)
            )
            .padding(.horizontal, 20)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
