//
//  LandmarksListView.swift
//  SwiftUITutor1
//
//  Created by Hakam Dev on 1/11/24.
//

import SwiftUI

struct LandmarksListView: View {
    @Environment(DataSource.self) var dataSource
    
    private var favLandmarks: [Landmark] {
        dataSource.landmarks.filter { x in
            x.isFavorite
        }
    }
    
    @State private var showFavorites: Bool = false
    
    var body: some View {
        
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavorites ) {
                    Text("Show Favorites")
                        .font(.title3)
                        .padding(10)
                }
                .foregroundColor(.accentColor)
                
                ForEach(showFavorites ? favLandmarks : dataSource.landmarks) { landmark in
                    NavigationLink {
                        LandmarkDetailsView(landmark: landmark)
                    } label: {
                        LandmarkRowView(label: landmark.name, imageName: landmark.imageName, isFavored: landmark.isFavorite)
                    }
                }
            }
            .navigationTitle("Landmarks")
            .animation(.default, value: showFavorites ? favLandmarks : dataSource.landmarks)
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarksListView()
        .environment(DataSource())
}
