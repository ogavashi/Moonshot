//
//  CustomDivider.swift
//  Moonshot
//
//  Created by Oleg Gavashi on 10.09.2023.
//

import SwiftUI

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackdround)
            .padding(.vertical)
    }
}

struct CustomDivider_Previews: PreviewProvider {
    static var previews: some View {
        CustomDivider()
    }
}
