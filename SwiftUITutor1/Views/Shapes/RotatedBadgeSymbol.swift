//
//  RotatedBadgeSymbol.swift
//  SwiftUITutor1
//
//  Created by Hakam Dev on 1/19/24.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
        
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: .degrees(5))
}
