//
//  SettingsView.swift
//  meuVolksvagen2
//
//  Created by Lucas Newlands on 06/11/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Opções")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                Spacer()
            }
            .padding()

            menuOptionView()
            menuOptionView(iconName: "car", optionTitle: "Meu Volksvagen")
            menuOptionView(iconName: "photo.on.rectangle", optionTitle: "Conheça seu VW")
            menuOptionView(iconName: "calendar", optionTitle: "Agendamento de Serviços")
            menuOptionView(iconName: "newspaper", optionTitle: "Manual do proprietário")
            menuOptionView()

            
            Spacer()
            

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("volksBlue"))
    }
}

#Preview {
    SettingsView()
}
