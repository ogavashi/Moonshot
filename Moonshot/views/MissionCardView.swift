//
//  MissionView.swift
//  Moonshot
//
//  Created by Oleg Gavashi on 10.09.2023.
//

import SwiftUI

struct MissionCardView: View {
    let mission: Mission
    let crew: [CrewMemeber]
    
    var body: some View {
        NavigationLink {
            MissionView(mission: mission, crew: crew)
        } label: {
            VStack {
                Image(mission.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                VStack {
                    Text(mission.displayName)
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    Text(mission.formattedLaunchDate)
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.5))
                }
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .background(.lightBackdround)
            }
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}
