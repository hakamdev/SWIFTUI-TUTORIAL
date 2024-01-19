//
//  MetaDataView.swift
//  SwiftUITutor1
//
//  Created by Hakam Dev on 1/10/24.
//

import SwiftUI

struct MetaDataView: View {
    let name: String
    let address: String
    let state: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(name)
                .font(.title)
                .fontWeight(.semibold)
            HStack {
                Text(address)
                    .font(.subheadline)
                Spacer()
                Text(state)
                    .font(.subheadline)
            }
            // .foregroundColor(.gray)
        }
        .padding()
    }
}

#Preview {
    MetaDataView(name: "Name", address: "Address", state: "State")
}
