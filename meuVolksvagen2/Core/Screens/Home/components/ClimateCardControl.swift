//
//  ClimateCardControl.swift
//  meuVolksvagen2
//
//  Created by Lucas Newlands on 06/11/23.
//

import SwiftUI

struct ClimateCardControl: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Clima")
                Spacer()
                Text("Off")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .fontWeight(.semibold)
            
            HStack {
                Image(systemName: "fanblades.slash")
                    .font(.system(size: 25))
                
                Spacer()
                
                Text("21.0° c")
                    .foregroundColor(.gray)
            }
            .padding(.top, 15)
            
            Divider()
                .padding(.top, 10)
            
            HStack {
                Button {
                    print("temperatura")
                } label: {
                    Image(systemName: "chevron.down")
                        .font(.system(size: 20))
                        .foregroundColor(.blue)
                }
                
                Spacer()
                
                Button {
                    print("temperatura")
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 20))
                        .foregroundColor(.red)
                }
            }
            .padding(.top, 10)
            
            Spacer()
        }
        .padding()
        .frame(width: 160, height: 170)
        .background(Color.white)
        .cornerRadius(24)
    }
}

#Preview {
    ClimateCardControl()
}
