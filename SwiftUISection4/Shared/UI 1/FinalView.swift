//
//  FinalView.swift
//  SwiftUISection4 (iOS)
//
//  Created by Arun_Skyraan on 28/10/22.
//

import SwiftUI

struct Final1View: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(0)
            
            Text("Explore")
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                }
                .tag(0)
            
            Text("plus")
                .tabItem {
                    Image(systemName: "plus")
                }
                .tag(0)
            
            Text("messages")
                .tabItem {
                    Image(systemName: "text.bubble")
                }
                .tag(0)
            
            
            Text("Notifications")
                .tabItem {
                    Image(systemName: "bell")
                }
                .tag(0)
        }
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        Final1View()
    }
}
