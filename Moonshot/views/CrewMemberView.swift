//
//  CrewMemberView.swift
//  Moonshot
//
//  Created by Oleg Gavashi on 10.09.2023.
//

import SwiftUI

struct CrewMemberView: View {
    let astronaut: Astronaut
    
    var body: some View {
        ScrollView {
                  VStack {
                      Image(astronaut.id)
                          .resizable()
                          .scaledToFit()

                      Text(astronaut.description)
                          .padding()
                  }
              }
              .background(.darkBackground)
              .navigationTitle(astronaut.name)
              .navigationBarTitleDisplayMode(.inline)
    }
}

struct CrewMemberView_Previews: PreviewProvider {
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")

      static var previews: some View {
          CrewMemberView(astronaut: astronauts["armstrong"]!)
              .preferredColorScheme(.dark)
      }
}
