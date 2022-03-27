//
//  Ex101View.swift
//  Lab3
//
//  Created by Przemyslaw Sipta on 26/03/2022.
//

import SwiftUI
import MapKit

struct Ex101View: View {
    @State var lat: Double = 0.0
    @State var lng: Double = 0.0
    var region: Binding<MKCoordinateRegion> {
        Binding(get: {
            MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: self.lat, longitude: self.lng), latitudinalMeters: 100, longitudinalMeters: 300)
        }) {(newVal) in
            
        }
    }
    var body: some View {
        VStack() {
            Text("Podaj wspolrzedne")
            TextField("Latitiude", value: $lat, format: .number)
                           .textFieldStyle(.roundedBorder)
                           .padding()
            TextField("Longitude", value: $lng, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            Map(coordinateRegion: region)
        }
    }
}

struct Ex101View_Previews: PreviewProvider {
    static var previews: some View {
        Ex101View()
    }
}
