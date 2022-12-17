//
//  BindingSampleView.swift
//  SwiftUISection4 (iOS)
//
//  Created by Arun_Skyraan on 01/11/22.
//

import SwiftUI

struct BindingSampleView: View {
    
    @State var name: String = ""
    @State var age: String = ""
    
    var body: some View {
        VStack {
            TextField("name", text: $name)
                .padding()
                .textFieldStyle(.roundedBorder)
                .background(Color.purple)
                .cornerRadius(10)
                .padding()
            TextField("age", text: $age)
                .padding()
                .textFieldStyle(.roundedBorder)
                .background(Color.orange)
                .cornerRadius(10)
                .padding()
            
            NavigationLink(destination: {
                BindingValueView(name: $name, age: $age)
            }, label: {
                Text("click to bind value to another view".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.blue)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.blue, lineWidth: 2.0)
                    )
            })


        }
        .navigationTitle("Binding")
    }
}

struct BindingSampleView_Previews: PreviewProvider {
    static var previews: some View {
        BindingSampleView()
    }
}

struct BindingValueView: View {
    
    @Binding var name: String
    @Binding var age: String
    
    var body: some View {
        HStack {
            VStack {
                Text("name")
                Text("age")
            }
            VStack {
                Text(name)
                Text(age)
            }
        }
        .navigationTitle("values")
    }
}

