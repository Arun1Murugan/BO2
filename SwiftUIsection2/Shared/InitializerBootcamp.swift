//
//  InitializerBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 24/09/22.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count : Int
    let title : String
    
    init( count : Int, fruit : Fruit){
        
        self.count = count
       
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
        
    
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing : 10) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("\(title)")
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10.0)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootcamp(count: 100 , fruit: .apple)
            InitializerBootcamp(count: 18 , fruit: .orange)
        }
    }
}
