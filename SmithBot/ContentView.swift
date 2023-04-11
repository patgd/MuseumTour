//
//  ContentView.swift
//  SmithBot
//
//  Created by pat on 2/22/23.
//

import SwiftUI
import Subsonic

struct EntranceView: View {
    @State var roomNumber: Int
    
    var body: some View {
        Text("Room \(roomNumber)")
    }
}

struct ContentView: View {
    @State private var isPlaying = false
    
    var body: some View {
        ZStack {
            NavigationStack {
                ZStack {
                    Color.offWhite
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                        NavigationLink {
//                            RoomView(isPlaying: $isPlaying)
                            RoomView(roomName: "Rubenstein Gallery")
                        } label: {
                            CardView(imageName: "Rubenstein Gallery")
                        }
                        .padding(20)
                        
                        NavigationLink {
//                            RoomView(isPlaying: $isPlaying)
                            RoomView(roomName: "Rotonda")
                        } label: {
                            CardView(imageName: "Rotonda")
                        }
                        .padding(20)
                        
                        NavigationLink {
//                            RoomView(isPlaying: $isPlaying)
                            RoomView(roomName: "Rubenstein Gallery")
                        } label: {
                            CardView(imageName: "Rubenstein Gallery")
                        }
                        .padding(20)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
