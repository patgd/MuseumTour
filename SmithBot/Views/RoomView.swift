//
//  RoomView.swift
//  SmithBot
//
//  Created by pat on 3/8/23.
//

import SwiftUI

struct RoomView: View {
//    @Binding var isPlaying: Bool
    let roomName: String
    
    var body: some View {
        VStack {
            if roomName == "Rubenstein Gallery" {
                ZStack {
                    Color.offWhite
                    VStack {
                        HStack {
                            ExhibitView(name: "Magna Carta")
                            ExhibitView(name: "Immigrants")
                        }
                        HStack {
                            ExhibitView(name: "Women")
                            ExhibitView(name: "African Americans")
                        }
                    }
                }
            } else if roomName == "Rotonda" {
                ZStack {
                    Color.offWhite
                    VStack {
                        HStack {
                            ExhibitView(name: "Declaration of Independence")
                            ExhibitView(name: "Bill of Rights")
                        }
                        HStack {
                            ExhibitView(name: "The Constitution")
//                            ExhibitView(name: "African Americans")
                        }
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
//        RoomView(isPlaying: false)
        RoomView(roomName: "Rotonda")
    }
}
