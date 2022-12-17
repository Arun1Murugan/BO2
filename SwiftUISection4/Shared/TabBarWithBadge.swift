//
//  TabBarWithBadge.swift
//  SwiftUISection4 (iOS)
//
//  Created by Arun_Skyraan on 28/10/22.
//

import SwiftUI

struct TabBarWithBadge: View {
    var body: some View {
//        List {
//            Text("Hello, world!")
//                .badge(5)
//            Text("Hello, world!")
//            Text("Hello, world!")
//            Text("Hello, world!")
//        }
        TabView {
            LinearGradient(
                gradient: Gradient(colors: [Color.purple, Color.blue, Color.white]),
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea(.all)
            .tabItem {
                Image(systemName: "heart.fill")
                Text("Heart")
            }
            .badge("NEW")
            
            RadialGradient(
                gradient: Gradient(colors: [Color.pink, Color.yellow, Color.white]),
                center: .center,
                startRadius: 5,
                endRadius: 400)
            .ignoresSafeArea(.all)
            .tabItem {
                Image(systemName: "graduationcap.fill")
                Text("Tech")
            }
            .badge("HOT")
            
            AngularGradient(
                gradient: Gradient(colors: [Color.green, Color.mint]),
                center: .topLeading,
                angle: .degrees(180 + 5))
            .ignoresSafeArea(.all)
                .tabItem {
                    Image(systemName: "sleep.circle.fill")
                    Text("Sleep")
                }
                .badge("")
        }
    }
}

struct TabBarWithBadge_Previews: PreviewProvider {
    static var previews: some View {
        TabBarWithBadge()
    }
}
