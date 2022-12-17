//
//  UserDefaultsBootcamp.swift
//  SwiftUIsection3
//
//  Created by Arun_Skyraan on 27/09/22.
//

import SwiftUI

struct UserDefaultsBootcamp: View {
    
    @State var name : String?
    
    var body: some View {
        VStack {
            Text(name ?? "default value")
            
            if let n = name {
                Text(n)
            }
            
            Button("save name"){
                
                let  n1: String = "Arun"
                name = n1
                UserDefaults.standard.set(n1, forKey: "n1")
            }
        }
        .onAppear(perform: {
            name = UserDefaults.standard.string(forKey: "n1")
        })
    }
}

struct UserDefaultsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultsBootcamp()
    }
}
