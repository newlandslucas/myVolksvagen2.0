//
//  MapComponentView.swift
//  meuVolksvagen2
//
//  Created by Lucas Newlands on 06/11/23.
//

import SwiftUI
import MapKit

struct MapComponentView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -15.8625, longitude: -47.9125), span: .init(latitudeDelta: 0.05, longitudeDelta: 0.05))
    let locationManager = CLLocationManager()
    var body: some View {
        VStack {
            HStack {
                Text("Localização")
                    .fontWeight(.semibold)
                Spacer()
            }
            
            Spacer()

            VStack {
                Map(coordinateRegion: $region)
                    .frame(width: 160, height: 120)
                    .cornerRadius(12)
            }
        }
        .padding()
        .frame(width: 180, height: 170)
        .background(Color.white)
        .cornerRadius(24)
    }
}

#Preview {
    MapComponentView()
}
