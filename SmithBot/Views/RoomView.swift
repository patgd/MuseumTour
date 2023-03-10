//
//  RoomView.swift
//  SmithBot
//
//  Created by pat on 3/8/23.
//

import SwiftUI

struct RoomView: View {
    var body: some View {
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
        .edgesIgnoringSafeArea(.all)
    }
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView()
    }
}
