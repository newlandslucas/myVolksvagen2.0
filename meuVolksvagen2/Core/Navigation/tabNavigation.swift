//
//  tabNavigation.swift
//  meuVolksvagen2
//
//  Created by Lucas Newlands on 06/11/23.
//

import SwiftUI

struct tabNavigation: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            MapView()
                .tabItem {
                    Label("Localização", systemImage: "map")
                }
            SettingsView()
                .tabItem {
                    Label("Mais", systemImage: "line.3.horizontal")
                }
        }
        .background(Color.white)
    }
}

#Preview {
    tabNavigation()
}
