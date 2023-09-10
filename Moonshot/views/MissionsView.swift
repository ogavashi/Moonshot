//
//  MissionsView.swift
//  Moonshot
//
//  Created by Oleg Gavashi on 10.09.2023.
//

import SwiftUI

struct MissionsView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(missions) { mission in
                MissionCardView(mission: mission, crew: getMissionCrew(mission: mission))
            }
        }
        .padding([.horizontal, .vertical])
    }
    
    func getMissionCrew(mission: Mission) -> [CrewMemeber] {
        let crew = mission.crew.map { crewMember in
            if let astronaut = astronauts[crewMember.name] {
                return CrewMemeber(role: crewMember.role, astronaut: astronaut)
            }
            fatalError("Missing \(crewMember.name) in file.")
        }
        
        return crew
    }
}

struct MissionsView_Previews: PreviewProvider {
    static var previews: some View {
        MissionsView()
    }
}
