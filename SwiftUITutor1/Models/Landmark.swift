//
//  Landmark.swift
//  SwiftUITutor1
//
//  Created by Hakam Dev on 1/10/24.
//

import Foundation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var imageName: String
    var coordinates: Coordinates
    var isFavorite: Bool

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
