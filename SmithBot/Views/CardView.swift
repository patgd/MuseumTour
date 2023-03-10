//
//  CardView.swift
//  SmithBot
//
//  Created by pat on 3/8/23.
//

import SwiftUI

struct CardView: View {
    @State var imageName: String
    
    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .frame(maxWidth: 200, maxHeight: 120)
                .scaledToFill()
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
            
            
            Text(imageName)
                .shadow(radius: 5)
                .shadow(radius: 5, x: 0, y: -7)
                .shadow(radius: 5, x: 0, y: -7)
                .shadow(radius: 3, x: 0, y: -3)
                .shadow(radius: 3, x: 0, y: -3)
            
                .foregroundColor(.white)
                .fontWeight(.black)
                .offset(CGSize(width: 0, height: -40))
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: "Rubenstein Gallery")
    }
}
