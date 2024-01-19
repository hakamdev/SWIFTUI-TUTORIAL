//
//  FavoriteButton.swift
//  SwiftUITutor1
//
//  Created by Hakam Dev on 1/13/24.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Image(systemName: isSet ? "heart.fill" : "heart")
                .foregroundStyle(isSet ? .red : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
