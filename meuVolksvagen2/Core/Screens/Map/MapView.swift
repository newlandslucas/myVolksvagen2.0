//
//  MapView.swift
//  meuVolksvagen2
//
//  Created by Lucas Newlands on 06/11/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -15.8625, longitude: -47.9125), span: .init(latitudeDelta: 0.03, longitudeDelta: 0.03))
    let locationManager = CLLocationManager()
    var body: some View {
        VStack {
            VStack {
                Map(coordinateRegion: $region)
            }
            .frame(maxWidth: .infinity, maxHeight: 300)
            .cornerRadius(18)
            
            HStack {
                Text("Encontrar uma concessionária")
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ContactCard()
                    ContactCard()
                    ContactCard()

                }
                .padding()
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    MapView()
}
