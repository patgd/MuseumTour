//
//  RoomItemView.swift
//  SmithBot
//
//  Created by pat on 2/27/23.
//

import SwiftUI
import Subsonic

struct RoomItemView: View {
    let itemName: String
    let soundName: String
    
    init(name itemName: String) {
        self.itemName = itemName
        self.soundName = "\(itemName).mp3"
    }
    
    var body: some View {
        Button(itemName) {
            stopAllManagedSounds()
            play(sound: soundName)
        }
        .frame(maxWidth: 200, maxHeight: 120)
        .foregroundColor(.white)
        .background(
            Image(itemName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(15)
        )
        .cornerRadius(4.0)
        .background(.black)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
        .padding()
    }
}

struct RoomItemView_Previews: PreviewProvider {
    static var previews: some View {
        RoomItemView(name: "Magna Carta")
    }
}
