//
//  SheetsBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 11/09/22.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet : Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.title)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                //don't add conditional logics here.
//                SecondScreen()
//            })
            .sheet(isPresented: $showSheet, content: {
                SecondScreen()
            })
        }
    }
}

struct SecondScreen : View{
    
//    @State var showSheet : Bool = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack(alignment : .topLeading){
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
//                showSheet.toggle()
                presentationMode.wrappedValue.dismiss()
            }, label: {
//                Text("Button")
                Image(systemName: "chevron.down")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(20)
//                    .background(Color.white.cornerRadius(10))
                Text("Title")
            })
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
//        SecondScreen()
    }
}
