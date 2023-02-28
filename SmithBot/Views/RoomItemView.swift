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
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
        )
        .cornerRadius(4.0)
        .frame(maxWidth: 190, maxHeight: 130)
        .background(.black)
        .cornerRadius(15)
    }
}

struct RoomItemView_Previews: PreviewProvider {
    static var previews: some View {
        RoomItemView(name: "Magna Carta")
    }
}
