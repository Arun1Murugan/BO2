//
//  AlertBootcamp.swift
//  SwiftUIsection3
//
//  Created by Arun_Skyraan on 24/09/22.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert : Bool = false
    @State var backgroundColor : Color = .yellow
    @State var alertTitle : String = ""
    @State var alertMsg : String = ""
    @State var alertTyle : myAlert? = nil
    
    enum myAlert {
        case fav
        case read
    }
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea(.all)
            
            VStack {
                Button("Click fav") {
                    alertTyle = .fav
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                getAlert()
        }
                
                Button("Click read") {
                    alertTyle = .read
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                getAlert()
        }
            }
            
            
        }
    }
    
    func getAlert() -> Alert {
        
        
        switch(alertTyle){
        case .fav :
            return Alert(title: Text("TITLE"),
                                 message: Text("fav delete msg"),
                                 primaryButton: .destructive(Text("delete"), action: {
                               backgroundColor = .mint
                           }),
                                 secondaryButton: .cancel())
            
        case .read :
            return Alert(title: Text("TITLE"),
                                 message: Text("read list delete msg"),
                                 primaryButton: .destructive(Text("delete"), action: {
                               backgroundColor = .mint
                           }),
                                 secondaryButton: .cancel())

        case .none:
            return Alert(title: Text("something went wrong."))
    
            
        }

        
//        return Alert(title: Text("TITLE"),
//                     message: Text("Message"),
//                     primaryButton: .destructive(Text("delete"), action: {
//                   backgroundColor = .mint
//               }),
//                     secondaryButton: .cancel())
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
