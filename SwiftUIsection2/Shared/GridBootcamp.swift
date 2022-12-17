//
//  GridBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 11/09/22.
//

import SwiftUI

struct GridBootcamp: View {
    
    let column1 : [GridItem] = [ // Columns
        
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        
    ]
    
    let cloumn2 : [GridItem] = [
    GridItem(.flexible(), spacing: nil, alignment: nil),
    GridItem(.flexible(), spacing: nil, alignment: nil),
    GridItem(.flexible(), spacing: nil, alignment: nil)
    ]

    
        
    
    
    var body: some View {
        ScrollView {
       
            Circle()
                .fill(.gray)
                .frame(height: 300)
            
            LazyVGrid(columns:cloumn2,
                      alignment: .center,
                      spacing: nil,
                      pinnedViews: [.sectionHeaders],
                      content:{
                Section( header:
                            Text("Section 1")
                    .foregroundColor(.mint)
                    .font(.system(size: 25))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.red)
                    ){
            
            ForEach(0..<25) { index in
                Rectangle()
                    .fill(Color.blue)
                    .frame(height: 150)
                    
            }
            }
                
                Section( header:
                            Text("Section 2")
                    .foregroundColor(.mint)
                    .font(.system(size: 25))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.red)
                    ){
            
            ForEach(0..<25) { index in
                Rectangle()
                    .fill(Color.yellow)
                    .frame(height: 150)
            }
            }
            })
        }
        }

}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
