//
//  ContentView.swift
//  MuseumTour
//
//  Created by pat on 3/2/23.
//

import SwiftUI
import Subsonic

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.offWhite
            VStack {
                HStack {
                    RoomItemView(name: "Magna Carta")
                    RoomItemView(name: "Immigrants")
                }
                HStack {
                    RoomItemView(name: "Women")
                    RoomItemView(name: "African Americans")
                }
            }
        }
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
