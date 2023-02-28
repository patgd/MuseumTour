//
//  ContentView.swift
//  SmithBot
//
//  Created by pat on 2/22/23.
//

import SwiftUI
import Subsonic
import CoreLocation

struct ContentView: View {
    
    var body: some View {
        VStack {
            HStack {
                RoomItemView(name: "Magna Carta")
                RoomItemView(name: "Immigrants")
            }
            HStack {
                RoomItemView(name: "Women")
                RoomItemView(name: "African Americans")
            }
            HStack {
                RoomItemView(name: "Magna Carta")
                RoomItemView(name: "Magna Carta")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
