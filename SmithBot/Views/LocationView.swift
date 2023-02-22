//
//  LocationView.swift
//  SmithBot
//
//  Created by pat on 2/22/23.
//

import SwiftUI

struct LocationView: View {
    
    @StateObject var locationManager = LocationManager()
    
    
    var body: some View {
        VStack {
            Spacer()
            Text(locationManager.locationString)
            Spacer()
            Button("Activate Location Services") {
                locationManager.startLocationServices()
            }
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
