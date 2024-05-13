//
//  MissionView.swift
//  Moonshot
//
//  Created by Raghavendra Mirajkar on 13/05/24.
//

import SwiftUI

struct MissionView: View {
    struct CrewMember {
        let role: String
        let astronaut: Astronaut
    }
    let mission : Mission
    let crew: [CrewMember]
    
    var body: some View {
        ScrollView {
            VStack {
                Image(mission.image)
                    .resizable()
                    .scaledToFit()
                    .containerRelativeFrame(.horizontal) { width, axis in
                        width * 0.6
                    }
                    .overlay(
                            Circle()
                                .strokeBorder(.white, lineWidth: 1)
                    )
                
                Rectangle().frame(height: 2).foregroundStyle(.lightBackground).padding(.vertical)
                
                VStack(alignment: .leading, content: {
                    Text("Mission Highlights")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                    Text(mission.description)
                })
                .padding(.horizontal)
                
                Rectangle().frame(height: 2).foregroundStyle(.lightBackground).padding(.vertical)
                
                    Text("Crew Members")
                        .font(.title.bold())
                    
                
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(crew,  id: \.role) { crewMember in
                                NavigationLink {
                                    AstronautView(astronaut: crewMember.astronaut)
                                } label: {
                                    HStack {
                                        Image(crewMember.astronaut.id)
                                            .resizable()
                                            .frame(width: 220, height: 160)
                                            .clipShape(Circle())
                                            .overlay(
                                                    Circle()
                                                        .strokeBorder(.white, lineWidth: 1)
                                            )
                                        
                                        VStack(alignment: .leading) {
                                            Text(crewMember.astronaut.name)
                                                .foregroundStyle(.white)
                                                .font(.title2.bold())
                                            
                                            Text(crewMember.role)
                                                .foregroundStyle(.white.opacity(0.5))
                                                .font(.title3)
                                        }
                                    }
                                }
                            }
                        }
                    }
                            
                
            }
            .padding(.bottom)
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackgroung)
    }
    init(mission: Mission, astronauts: [String: Astronaut]) {
        self.mission = mission
        self.crew = mission.crew.map { member in
            if let astronaut = astronauts[member.name] {
                return CrewMember(role: member.role, astronaut: astronaut)
            } else {
                fatalError("Missing \(member.name)")
            }
        }
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    return MissionView(mission: missions[0], astronauts: astronauts)
        .preferredColorScheme(.dark)
}
