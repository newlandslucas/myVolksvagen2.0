//
//  menuOptionView.swift
//  meuVolksvagen2
//
//  Created by Lucas Newlands on 07/11/23.
//

import SwiftUI

struct menuOptionView: View {
    var iconName: String = "house"
    var optionTitle: String = "Home"
    
    var body: some View {
        Button {
            print("clicou!")
        } label: {
            HStack(spacing: 10) {
                Image(systemName: iconName)
                Text(optionTitle)
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding()
            .foregroundColor(.white)
        }
    }
}

#Preview {
    menuOptionView()
}
