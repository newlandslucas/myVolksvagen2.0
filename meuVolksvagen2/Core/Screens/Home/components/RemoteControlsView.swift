//
//  RemoteControlsView.swift
//  meuVolksvagen2
//
//  Created by Lucas Newlands on 03/11/23.
//

import SwiftUI

struct RemoteControlsView: View {
    var iconName: String = ""
    var description: String = ""
    
    var body: some View {
        Button {
            print("clicou!")
        } label: {
            VStack(spacing: 8) {
                VStack {
                    Image(systemName: iconName)
                        .foregroundColor(.gray)
                    
                    
                }
                .frame(width: 55, height: 55)
                .background(Color.gray.opacity(0.5))
                .cornerRadius(30)
                
                VStack {
                    Text(description)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
            }

        }
    }
}

#Preview {
    RemoteControlsView()
}
