//
//  ContentView.swift
//  SmithBot
//
//  Created by pat on 2/22/23.
//

import SwiftUI
//import AVFoundation
import Subsonic

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Museum 1")
                .padding()
            Button("Start Room 123 Tour") {
                play(sound: "guidedTour1.mp3")
            }
            Text("Museum 2")
                .padding()
            Button("Start Room 124 Tour") {
                play(sound: "guidedTour2.mp3")
            }
            Text("Museum 3")
                .padding()
            Button("Start Room 125 Tour") {
                play(sound: "guidedTour3.mp3")
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
