//
//  HomeView.swift
//  meuVolksvagen2
//
//  Created by Lucas Newlands on 02/11/23.
//

import SwiftUI

struct HomeView: View {

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                VStack(alignment: .leading) {
                    Text("Olá,")
                        .font(.title2)
                    Text("Lucas Newlands")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                
                Spacer()
            }
            .frame(width: 400, height: 170)
            .background(Color.blue)
            .cornerRadius(24)
            .ignoresSafeArea(.all)
            
            //MARK: End Header
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: -60) {
                    HStack {
                        Text("Meu Nivus")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("KM: 800")
                            .foregroundColor(.gray)
                            .font(.footnote)
                    }
                    Image("nivusImage")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 250, height: 250)
                }
                HStack {
                    Spacer()
                    Text("autonomia: 560 Km")
                        .foregroundColor(.gray)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                //MARK: Remote controls
                VStack() {
                    HStack {
                        Text("Remote")
                            .fontWeight(.semibold)
                        Spacer()
                        Text("mais")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    
                    HStack(spacing: 25) {
                        RemoteControlsView(iconName: "car.side.fill", description: "Porta mala")
                        RemoteControlsView(iconName: "car.top.door.front.left.open", description: "Portas")
                        RemoteControlsView(iconName: "auto.headlight.high.beam", description: "Fárois")
                    }
                    .padding(.top, 5)
                }
                .padding()
                .frame(width: 350, height: 150)
                .background(Color.white)
                .cornerRadius(12)
                .padding(.top, 10)
                
                //MARK: Clima | localização
                HStack {
                    ClimateCardControl()
                    Spacer()
                    MapComponentView()
                }
                .padding()
                .padding(.top, -10)
                
            }
            .padding(.top, -45)
            .padding()
            


        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("ColorGray"))
        
    }
}

#Preview {
    HomeView()
}
