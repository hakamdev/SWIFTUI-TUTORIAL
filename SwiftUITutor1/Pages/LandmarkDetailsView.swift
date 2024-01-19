//
//  ContentView.swift
//  SwiftUITutor1
//
//  Created by Hakam Dev on 1/10/24.
//

import SwiftUI
import MapKit

struct LandmarkDetailsView: View {
    let landmark: Landmark
    private let verticalSpacer: CGFloat = 100
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ZStack(alignment: .bottom) {
                    MapView(name: landmark.name, currentRegion: MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: landmark.coordinates.latitude, longitude: landmark.coordinates.longitude), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)))
                        .frame(height: 300)
                    
                    NavigationLink {
                        Image(landmark.imageName)
                        .resizable()
                    } label: {
                        CircleImage(imageName: landmark.imageName)
                            .frame(width: 200, height: 200)
                            .offset(y: verticalSpacer - 10)
                    }

                    
                    
                }
                .padding(.bottom, verticalSpacer)
                
                MetaDataView(name: landmark.name, address: landmark.park, state: landmark.state)
                
                Divider()
                
                Text("About this place:")
                    .font(.title2)
                    .padding(.horizontal, 12)
                    .padding(.top, 12)
                
                Text(landmark.description)
                    .font(.subheadline)
                    .padding(.horizontal, 12)
                    .padding(.top, 1)
                
                Spacer()
            }
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        .ignoresSafeArea()
    }
}

#Preview {
    var src = DataSource()
    return LandmarkDetailsView(landmark: src.landmarks[3])
}
