//
//  TabViewBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 12/09/22.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selected :Int = 2
    @State var images : [String] = [""]
    
    var body: some View {

            
            VStack {
                VStack{
                    HStack() {
                        Text("Sector")
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                    Menu{
                        Text("1")
                        Text("2")
                        Text("3")
                    }label: {
                        Image(systemName: "chevron.down")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    }
                        Spacer()
                Image(systemName: "magnifyingglass")
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                        
                    }
                    
                
                
            }
//            .frame(width: UIScreen.main.bounds.width, height: 130)
            .background(.orange)
            .cornerRadius(20)
        
            Spacer()
            }
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}
