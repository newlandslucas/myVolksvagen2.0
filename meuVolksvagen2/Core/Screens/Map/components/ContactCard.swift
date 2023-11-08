//
//  ContactCard.swift
//  meuVolksvagen2
//
//  Created by Lucas Newlands on 08/11/23.
//

import SwiftUI

struct ContactCard: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "location.circle")
                    .font(.system(size: 30))
                Spacer()
                VStack(alignment: .leading) {
                    Text("Concesssionária Favorita")
                        .fontWeight(.semibold)
                    Text("VW Lago Sul")
                }

            }
            .padding()
            Spacer()
            
            Divider()
                .padding(.bottom, 10)
            
            HStack {
                Button {
                    print("ligar")
                } label: {
                    Text("Ligar")
                        .font(.title3)
                }

            }
            .padding(.bottom, 10)
            
        }
        .frame(width: 300, height: 180)
        .background(Color.white)
        .cornerRadius(14)
        .shadow(radius: 1.5)

    }
}

#Preview {
    ContactCard()
}
