//
//  StateBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 11/09/22.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor : Color = Color.mint
    @State var myTitle : String = ""
    @State var count : Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing : 20) {
                Text("\(myTitle)")
                Text("Count \(count)")
                
                HStack(spacing : 20) {
                    
                    Button(action: {
                        
                        backgroundColor = .gray
                        count += 1
                        myTitle = "button 1 pressed"
                        
                    }, label: {
                        Text("Button 1")
                    })
          
                    
                    Button(action: {
                        
                        backgroundColor = .pink
                        myTitle = "button 2 pressed"
                        count += 1
                        
                        
                    }, label: {
                        Text("Button 2")
                    })
                   
                    
                }
            }
        }
                 .foregroundColor(.white)
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
