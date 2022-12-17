//
//  OnAppearBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 18/09/22.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText : String = "This is old Text"
    @State var count : Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                Text("\(count)")
                
                LazyVStack {
                    ForEach(0..<50){ index in
                        
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height : 200)
//                            .padding()
                            .onAppear(perform: {
                                count += 1
                            })
                        
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                    myText = "this is new"
                })
            
            })
            .navigationTitle("OnAppear Bootcamp")
        }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
