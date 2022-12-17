//
//  ExtractSubviewBootcamp.swift
//  SwiftUIsection3
//
//  Created by Arun_Skyraan on 24/09/22.
//

import SwiftUI

struct ExtractSubviewBootcamp: View {
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea(.all)
            contentlayer
    
        }
    }
    
    var contentlayer: some View {
        HStack {
            MyItem(title: "Apple", count: 1, color: .red)
            MyItem(title: "orange", count: 6, color: .orange)
            MyItem(title: "Banana", count: 1, color: .yellow)
        }
    }
}

struct ExtractSubviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewBootcamp()
    }
}

struct MyItem: View {
    
    let title : String
    let count : Int
    let color : Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text("\(title)")
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
