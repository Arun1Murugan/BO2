//
//  IfLetGuardBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 18/09/22.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var displayText : String? = nil
    @State var isLoading : Bool = false
    @State var curr_UserID : String? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                
                Text("Safe coding....")
                if let text = displayText {
                    
                    Text(text)
                    
                }
                if isLoading {
                    ProgressView()
                }
                
                
                
                Spacer()
                
            }
            .navigationTitle("if let and guard")
            .onAppear(perform: {
                loadData()
            })
            
        }
    }
    
    func loadData(){
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            displayText = "this is new data"
            isLoading = false
        }
    }
    
    func loadData2(){
        guard let useId = curr_UserID else{
            displayText = "guard"
            return
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
