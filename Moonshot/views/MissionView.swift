//
//  MissionView.swift
//  Moonshot
//
//  Created by Oleg Gavashi on 10.09.2023.
//

import SwiftUI

struct MissionView: View {
    let mission: Mission
    let crew: [CrewMemeber]
    
    
    var body: some View {
        GeometryReader { geomtry in
            ScrollView {
                VStack {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geomtry.size.width * 0.8)
                        .padding(.top)
                    
                    VStack(alignment: .leading) {
                        CustomDivider()
                        
                        Text("Mission  Higlights")
                            .titleStyle()
                        
                        Text(mission.description)
                        
                        CustomDivider()
                        
                        
                        Text("Mission  Crew")
                            .titleStyle()
                    }
                    .padding(.horizontal)
                    
                    CrewListView(crew: crew)
                }
            }
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
    }
}

struct MissionView_Previews: PreviewProvider {
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    
    
    static var previews: some View {
        MissionView(mission: missions[0], crew: [CrewMemeber(role: "biba", astronaut: astronauts["grissom"]!)]) .preferredColorScheme(.dark)
    }
}
