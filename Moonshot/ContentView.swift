//
//  ContentView.swift
//  Moonshot
//
//  Created by Oleg Gavashi on 10.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                MissionsView()
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
