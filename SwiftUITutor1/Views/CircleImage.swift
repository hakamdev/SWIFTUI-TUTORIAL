//
//  CircleImage.swift
//  SwiftUITutor1
//
//  Created by Hakam Dev on 1/10/24.
//

import SwiftUI

struct CircleImage: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 6)
            }
            .shadow(radius: 20)
    }
}

#Preview {
    CircleImage(imageName: "turtlerock")
}
