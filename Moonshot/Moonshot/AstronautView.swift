//
//  AstronautView.swift
//  Moonshot
//
//  Created by Raghavendra Mirajkar on 13/05/24.
//

import SwiftUI

struct AstronautView: View {
    let astronaut : Astronaut
    
    var body: some View {
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .frame(height: 300)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .strokeBorder(.white, lineWidth: 1)
                    )
                
                Text(astronaut.description)
                    .font(.subheadline)
                    .padding(.top)
            }
        }
        .background(.darkBackgroung)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let astronauts : [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    return AstronautView(astronaut: astronauts["grissom"]!)
}
