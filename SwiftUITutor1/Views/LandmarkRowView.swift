//
//  LandmarkRowView.swift
//  SwiftUITutor1
//
//  Created by Hakam Dev on 1/11/24.
//

import SwiftUI

struct LandmarkRowView: View {
    let label: String
    let imageName: String
    let isFavored: Bool
    
    var body: some View {
        HStack(spacing: 16) {
            Image(imageName)
                .resizable()
                .clipShape(Circle())
                .frame(width: 42, height: 42)
            
            Text(label)
                .font(.title3)
                .lineLimit(1)
                .truncationMode(.middle)

            Spacer()
            
            if (isFavored) {
                Image(systemName: "heart.fill")
                    .foregroundColor(.accentColor)
            }
        }
    }
}

#Preview {
    LandmarkRowView(label: "CORN", imageName: "chilkoottrail", isFavored: true)
}
