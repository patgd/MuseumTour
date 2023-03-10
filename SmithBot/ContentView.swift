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
    
    var body: some View {
        ZStack {
            NavigationStack {
                ZStack {
                    Color.offWhite
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                        NavigationLink {
                            RoomView()
                        } label: {
                            CardView(imageName: "Rubenstein Gallery")
                        }
                        .padding(20)
                        
                        NavigationLink {
                            RoomView()
                        } label: {
                            CardView(imageName: "Rubenstein Gallery")
                        }
                        .padding(20)
                        
                        NavigationLink {
                            RoomView()
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
