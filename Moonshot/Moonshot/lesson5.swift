//
//  lesson5.swift
//  Moonshot
//
//  Created by Raghavendra Mirajkar on 11/05/24.
//

import SwiftUI

struct lesson5: View {
    let layout = [
        GridItem(.fixed(80)),
        GridItem(.fixed(80)),
        GridItem(.fixed(80))
    ]
    
    let layout1 = [GridItem(.adaptive(minimum: 80, maximum: 120))]
    
    let layout2 = [GridItem(.adaptive(minimum: 80, maximum: 120))]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout, content: {
                ForEach(0..<100) {
                    Text("Item \($0)")
                }
            })
            
            LazyVGrid(columns: layout1, content: {
                ForEach(0..<100) {
                    Text("Item \($0)")
                }
            })
        }
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout1, content: {
                ForEach(0..<100) {
                    Text("Item \($0)")
                }
            })
        }
    }
}

#Preview {
    lesson5()
}
