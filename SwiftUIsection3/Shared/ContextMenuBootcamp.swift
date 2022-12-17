//
//  ContextMenuBootcamp.swift
//  SwiftUIsection3
//
//  Created by Arun_Skyraan on 24/09/22.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor : Color = .mint
    
    var body: some View {
        VStack(alignment: .leading, spacing : 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swift programming")
                .font(.headline)
            Text("Contextmenu tutorial")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding()
        .background(backgroundColor.cornerRadius(10.0))
        .contextMenu {
            Button(action: {
                backgroundColor = .orange
            }, label: {
                Label("Button 1", systemImage: "flame.fill")
            })
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Button 2")
            })
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("button 3")
                    Image(systemName: "heart.fill")
                }
            })
        }
        
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
