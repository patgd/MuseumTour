//
//  NeumorphicCard.swift
//  SmithBot
//
//  Created by pat on 3/1/23.
//

import SwiftUI

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}

struct NeumorphicCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.offWhite)
            .background(Image("Women.jpg"))
            .frame(width: 300, height: 300)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

struct NeumorphicCard_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicCard()
    }
}
