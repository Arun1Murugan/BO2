//
//  ActionSheetBootcamp.swift
//  SwiftUIsection3
//
//  Created by Arun_Skyraan on 24/09/22.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet : Bool = false
    @State var actionSheetOption : ActionSheetOption = .button1
    
    enum  ActionSheetOption{
        
        case button1
        case button2
        case button3
        
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 35, height: 35)
                Text("@username")
                Spacer()
                Button(action: {
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
            }
            .padding(.horizontal)
            Rectangle()
                .frame(width: 350, height: 150)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    func getActionSheet() -> ActionSheet {
        
        let b1 : ActionSheet.Button = .default(Text("default")) {
            
        }
        let b2 : ActionSheet.Button = .destructive(Text("destructive")) {
            
        }
        let b3 : ActionSheet.Button = .cancel(Text("cancel"))

        
        switch(actionSheetOption){
        case .button1 :
            return ActionSheet(title: Text("button1"),
                               message: Text("b1 msg"),
                               buttons: [b1, b2, b3])
            
        case .button2 :
            return ActionSheet(title: Text("button2"),
                               message: Text("b2 msg"),
                               buttons: [b1, b2, b3])
            
        case .button3 :
            return ActionSheet(title: Text("button3"),
                               message: Text("b3 msg"),
                               buttons: [b1, b2, b3])
        
        }
        
//
//        return ActionSheet(title: Text("Title"),
//                           message: Text("msg cvbnm, cvbnm, dcvbnm  bnm,"),
//                           buttons: [b1, b2, b3])
        
        
    }
    
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
