//
//  SearchableListView.swift
//  SwiftUISection4 (iOS)
//
//  Created by Arun_Skyraan on 27/10/22.
//

import SwiftUI

struct SearchableListView: View {
    
    @State var searingFor: String = ""
    @State var cities: [String] = ["coimbatore","yesvantpur", "Chennai", "Banglore", "mumbai", "kolkata", "New delhi", "pune", "Trissur", "Palaghat", "Thiruvadrum", "Kanyakumari", "tuticorin", "kochuvelli", "Dhanbat", "allapuzha", "Tirupati", "habballi", "locknow", "korba"]
    var body: some View {
            List {
                ForEach(result, id: \.self) { item in
                    NavigationLink(destination: Text(item), label: {
                        Text(item.capitalized)
                    })
                }
            }
            .searchable(text: $searingFor)
            .navigationTitle("searchable ")
    }
    var result: [String] {
        if searingFor.isEmpty {
            return cities
        } else {
            return cities.filter{ $0.lowercased().contains(searingFor.lowercased()) }
        }
    }
}

struct SearchableListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchableListView()
    }
}
