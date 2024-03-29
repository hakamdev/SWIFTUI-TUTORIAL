//
//  SwiftUITutor1App.swift
//  SwiftUITutor1
//
//  Created by Hakam Dev on 1/10/24.
//

import SwiftUI

@main
struct SwiftUITutor1App: App {
    @State private var dataSource = DataSource()
    
    var body: some Scene {
        WindowGroup {
            LandmarksListView()
                .environment(dataSource)
        }
    }
}
