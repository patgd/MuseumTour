//
//  LocationManager.swift
//  SmithBot
//
//  Created by pat on 2/22/23.
//

import Foundation
import CoreLocation

final class LocationManager: NSObject, ObservableObject {
    
    var locationManager = CLLocationManager()
    
    @Published var locationString = ""
    var previousLocation: CLLocation?
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.allowsBackgroundLocationUpdates = true
    }
    
    func startLocationServices() {
        if locationManager.authorizationStatus == .authorizedAlways
            || locationManager.authorizationStatus == .authorizedWhenInUse {
            locationManager.startUpdatingLocation()
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
    }
}

extension LocationManager: CLLocationManagerDelegate {
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        if locationManager.authorizationStatus == .authorizedAlways
            || locationManager.authorizationStatus == .authorizedWhenInUse {
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let latest = locations.first else { return }
        if previousLocation == nil {
            previousLocation = latest
        } else {
            let distanceInMeters = previousLocation?.distance(from: latest) ?? 0
            previousLocation = latest
            locationString = "You are \(Int(distanceInMeters)) meters from your start point."
        }
        print(latest)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        guard let clError = error as? CLError else { return }
        switch clError {
        case CLError.denied:
            print("Accses denied")
        default:
            print("Catch all errors")
        }
    }
}
