//
//  BindingBootcamp1.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 11/09/22.
//

import SwiftUI

struct BindingBootcamp1: View {
    
    @State var backgroungColor : Color = Color.green
    @State var myTitle : String = "hello"
    
    var body: some View {
        ZStack {
            backgroungColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ButtonView(backGroungColor: $backgroungColor, myTitle: $myTitle)
                
                Text("\(myTitle)")
                
            }
        }
    }
}

struct ButtonView : View {
    
    @Binding var backGroungColor : Color
    @State var buttonColor : Color = Color.green
    @Binding var myTitle : String
    
    var body: some View{
        Button(action: {
            
            backGroungColor = .orange
            myTitle = "Hello everyone."
            
        }, label: {
            Text("MY button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })

    }
}


struct BindingBootcamp1_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp1()
    }
}
