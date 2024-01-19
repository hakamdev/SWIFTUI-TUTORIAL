//
//  DataSource.swift
//  SwiftUITutor1
//
//  Created by Hakam Dev on 1/11/24.
//

import Foundation

@Observable
class DataSource {
    var landmarks: [Landmark] = loadData("landmarkData.json")
    var hikes: [Hike] = loadData("hikeData.json")
}
