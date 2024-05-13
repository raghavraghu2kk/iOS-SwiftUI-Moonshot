//
//  lesson3.swift
//  Moonshot
//
//  Created by Raghavendra Mirajkar on 11/05/24.
//

import SwiftUI

struct lesson3: View {
    var body: some View {
        NavigationStack{
            NavigationLink {
                Text("Detail View")
                lesson1()
            } label: {
                HStack {
                    Text("This is the lesson 1")
                    Image(systemName: "face.smiling")
                }
                .font(.largeTitle)
            }
            .navigationTitle("SwiftUI")
            .padding()
            
            NavigationLink {
                lesson2()
            } label: {
                VStack {
                    Text("This is lesson 2")
                }
            }
            .font(.largeTitle)
            .padding()
            
            List(0..<5) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            }
            
        }
    }
}

#Preview {
    lesson3()
}
