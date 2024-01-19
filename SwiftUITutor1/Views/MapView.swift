//
//  MapView.swift
//  SwiftUITutor1
//
//  Created by Hakam Dev on 1/10/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    let name: String
    let currentRegion: MKCoordinateRegion
    
    var body: some View {
        Map(initialPosition: MapCameraPosition.region(currentRegion)) {
            Marker(coordinate: currentRegion.center) {
                Text(name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    let currentRegion: MKCoordinateRegion =
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011286, longitude: -117.166868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    return MapView(name: "", currentRegion: currentRegion)
}
