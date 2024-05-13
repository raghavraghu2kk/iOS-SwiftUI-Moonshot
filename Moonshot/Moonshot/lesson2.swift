//
//  lesson2.swift
//  Moonshot
//
//  Created by Raghavendra Mirajkar on 10/05/24.
//

import SwiftUI

struct CustomText: View {
    let text : String
    
    var body: some View {
        Text(text)
    }
    
    init(text: String) {
        print("Creating a new Custom text")
        self.text = text
    }
}

struct lesson2: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10, content: {
                ForEach(0..<100) {
                    CustomText(text: "Item \($0)").font(.title)
                }
            })
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    lesson2()
}
