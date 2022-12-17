//
//  PickerView.swift
//  SwiftUISection4
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

struct PickerView: View {
    @State var selection : String = ""
    @State var backgroundColor: Color = .green
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea(.all)
            VStack {
                Picker("", selection: $selection) {
                    ForEach(18..<20) { age in
                        Text("\(age)")
                            .tag("\(age)")
                    }
                }
                .accentColor(.blue)
                .pickerStyle(SegmentedPickerStyle())
                
                Picker("", selection: $selection) {
                    ForEach(18..<20) { age in
                        Text("\(age)")
                            .tag("\(age)")
                    }
                }
                .pickerStyle(WheelPickerStyle())
                
                HStack {
                    Text("Age")
                    Text(selection)
                }
                ColorPicker("color",
                            selection: $backgroundColor,
                            supportsOpacity: true)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(50)
            }
            .navigationTitle("picker")
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
