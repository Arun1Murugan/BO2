//
//  ImageBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 11/09/22.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image ("pexels-pixabay-36018")
            .resizable()
            .aspectRatio(contentMode: .fill)
//            .scaledToFit()
            .scaledToFill()
            .frame(width: 300, height: 200)
//            .clipped()
//            .cornerRadius(30)
//            .clipShape(Circle())
        
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
