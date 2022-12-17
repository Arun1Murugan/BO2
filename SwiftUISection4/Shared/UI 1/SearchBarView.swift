//
//  SearchBarView.swift
//  SwiftUISection4 (iOS)
//
//  Created by Arun_Skyraan on 28/10/22.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack {
            Image(systemName: "person")
                .symbolVariant(.circle)
                .font(.title)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.secondary)
                
                TextField("Search", text: .constant(""))
            }
            .padding(4)
            .background(RoundedRectangle(cornerRadius: 4).fill(.gray.opacity(0.2)))
            
            ZStack(alignment: .bottom) {
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 25, height: 25)
                    .padding(.bottom, 8)
                
                Text("Free")
                    .foregroundColor(.white)
                    .padding(1)
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.orange))
            }
        }
        .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
