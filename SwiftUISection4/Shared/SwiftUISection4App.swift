//
//  SwiftUISection4App.swift
//  Shared
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

@main
struct SwiftUISection4App: App {
    
    @State var listViewModel: ListViewModel = ListViewModel()
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()

    var body: some Scene {
        WindowGroup {
//            DragGestureBootcamp2()
//            TabBarWithBadge()
//            Final1View()
            
            NavigationView {
                ContentView()
            }
            .environmentObject(viewModel)
            .environmentObject(listViewModel)

            
//            NavigationView {
//                ListView()
//            }
//            .environmentObject(listViewModel)
            

//                AppNavBarView()

            
        }
    }
}
