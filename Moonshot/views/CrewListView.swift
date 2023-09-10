//
//  CrewListView.swift
//  Moonshot
//
//  Created by Oleg Gavashi on 10.09.2023.
//

import SwiftUI

struct CrewListView: View {
    let crew: [CrewMemeber]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(crew, id: \.role) { crewMember in
                    NavigationLink {
                        CrewMemberView(astronaut: crewMember.astronaut)
                    } label: {
                        VStack(spacing: 0) {
                            Image(crewMember.astronaut.id)
                                .resizable()
                                .frame(width: 208, height: 144)
                            
                            VStack(alignment: .leading) {
                                Text(crewMember.astronaut.name)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                
                                Text(crewMember.role)
                                    .foregroundColor(.secondary)
                            }
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                            .background(.lightBackdround)
                        }
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct CrewListView_Previews: PreviewProvider {
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        CrewListView(crew: [CrewMemeber(role: "biba", astronaut: astronauts["grissom"]!)])
    }
}
