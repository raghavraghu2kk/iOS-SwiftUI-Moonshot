//
//  ContentView.swift
//  Moonshot
//
//  Created by Raghavendra Mirajkar on 10/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    mainContent()
                } label: {
                    Text("MoonShot")
                }
                NavigationLink {
                    lesson1()
                } label: {
                    Text("Lesson 1")
                }
                
                NavigationLink {
                    lesson2()
                } label: {
                    Text("Lesson 2")
                }
                
                NavigationLink {
                    lesson3()
                } label: {
                    Text("Lesson 3")
                }
                
                NavigationLink {
                    lesson4()
                } label: {
                    Text("Lesson 4")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    ContentView()
}
