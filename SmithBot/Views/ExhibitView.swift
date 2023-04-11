//
//  RoomItemView.swift
//  SmithBot
//
//  Created by pat on 2/27/23.
//

import SwiftUI
import Subsonic

struct ExhibitView: View {
    let itemName: String
    let soundName: String
//    @Binding var isPlaying: Bool
    
    init(name itemName: String) {
        self.itemName = itemName
        self.soundName = "\(itemName).mp3"
//        self.isPlaying = isPlaying
    }
    
    var body: some View {
        ZStack {
            Image(itemName)
                .resizable()
                .frame(maxWidth: 170, maxHeight: 130)
                .scaledToFill()
                .cornerRadius(15)
            
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                .padding(7)
            
            Text(itemName)
                .shadow(radius: 5)
                .shadow(radius: 5)
                .shadow(radius: 5)
                .shadow(radius: 5)
            
                .foregroundColor(.white)
                .fontWeight(.black)
                .offset(CGSize(width: 0, height: 0))
        }
        .onTapGesture {
            stopAllManagedSounds()
            play(sound: soundName)
        }
        
//        VStack {
//            Button(itemName) {
//                stopAllManagedSounds()
//                play(sound: soundName)
//            }
//            .frame(maxWidth: 200, maxHeight: 120)
//            .foregroundColor(.white)
//            .background(
//                Image(itemName)
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .cornerRadius(15)
//            )
//            .cornerRadius(4.0)
//            //        .frame(maxWidth: 190, maxHeight: 130)
//            .background(.black)
//            .cornerRadius(15)
//            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
//            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
//            .padding()
//
//
//            ZStack {
//                Image(itemName)
//                    .resizable()
//                    .frame(maxWidth: 200, maxHeight: 120)
//                    .scaledToFill()
//                    .cornerRadius(15)
//
//                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
//                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
//                    .padding()
//
//                Text(itemName)
//                    .shadow(radius: 5)
//                    .shadow(radius: 5)
//
//                    .foregroundColor(.white)
//                    .fontWeight(.black)
//                    .offset(CGSize(width: 0, height: 0))
//            }
//        }
    }
}

struct RoomItemView_Previews: PreviewProvider {
    static var previews: some View {
        ExhibitView(name: "Magna Carta")
    }
}
