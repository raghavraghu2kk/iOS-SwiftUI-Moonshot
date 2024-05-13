//
//  lesson1.swift
//  Moonshot
//
//  Created by Raghavendra Mirajkar on 10/05/24.
//

import SwiftUI

struct lesson1: View {
    var body: some View {
        Image(.example)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal) { size, axis in
                size * 0.8
            }
    }
}

#Preview {
    lesson1()
}
