//
//  ColorPickerBotcamp.swift
//  SwiftUIsection3
//
//  Created by Arun_Skyraan on 25/09/22.
//

import SwiftUI

struct ColorPickerBotcamp: View {
    
    @State var backgoundColor : Color = .mint
    
    var body: some View {
        ZStack {
            
            backgoundColor
                .ignoresSafeArea(.all)
            
            ColorPicker("Title",
                        selection:  $backgoundColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(10)
            .font(.headline)
            .padding(50)
        }
    }
}

struct ColorPickerBotcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBotcamp()
    }
}
