//
//  ModelBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 18/09/22.
//

import SwiftUI


struct UserModel: Identifiable {
    let id : String = UUID().uuidString
    let name : String
    let address : String
    let age : Int
    let isVerified : Bool
}

struct ModelBootcamp: View {
    
    @State var users : [UserModel] = [
        UserModel(name: "Arun", address: "Tirupur", age: 21, isVerified: true),
        UserModel(name: "Ganesh", address: "Coimbatore", age: 20, isVerified: false),
        UserModel(name: "Kalaiyarasi", address: "Tenkasi", age: 20, isVerified: true),
        UserModel(name: "Karthik", address: "Avinashi", age: 21, isVerified: false),
        UserModel(name: "Sowmiya", address: "Sathy", age: 25, isVerified: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users){ user in
                    HStack(spacing : 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.name)
                            Text(user.address)
                        }
                        Spacer()
                        VStack {
                            Text("\(user.age)")
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(user.isVerified ? .blue : .gray)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Model")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
