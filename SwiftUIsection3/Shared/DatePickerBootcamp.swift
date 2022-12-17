//
//  DatePickerBootcamp.swift
//  SwiftUIsection3
//
//  Created by Arun_Skyraan on 25/09/22.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate : Date = Date()
    
    var body: some View {
        
        DatePicker(selection: $selectedDate, label: { Text("Date") })
        
            .datePickerStyle(GraphicalDatePickerStyle())
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
