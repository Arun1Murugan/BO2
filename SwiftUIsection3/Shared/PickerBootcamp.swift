//
//  PickerBootcamp.swift
//  SwiftUIsection3
//
//  Created by Arun_Skyraan on 25/09/22.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection : String = ""
    
    var body: some View {
        

        VStack {
            
            Picker("", selection: $selection) {
                ForEach(18..<20) { age in
                    Text("\(age)")
                        .tag("\(age)")
                }
            }
            .accentColor(.blue)
            .pickerStyle(SegmentedPickerStyle())
            HStack {
                Text("Age")
                Text(selection)
            }
            Spacer()
        }

    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
