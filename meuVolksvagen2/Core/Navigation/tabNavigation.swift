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
            RemoteView()
                .tabItem {
                    Label("Remote", systemImage: "key.radiowaves.forward")
                }
            MapView()
                .tabItem {
                    Label("Localização", systemImage: "map")
                }
            SettingsView()
                .tabItem {
                    Label("Ajustes", systemImage: "gear")
                }
        }
        .background(Color.white)
    }
}

#Preview {
    tabNavigation()
}
