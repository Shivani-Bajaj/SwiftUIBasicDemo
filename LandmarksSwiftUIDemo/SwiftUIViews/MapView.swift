//
//  MapView.swift
//  LandmarksSwiftUIDemo
//
//  Created by shivani Bajaj on 1/2/20.
//  Copyright © 2020 Shivani Bajaj. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    // MARK: Properties
    var coordinate: CLLocationCoordinate2D
    
    // MARK: UIViewRepresentable Protocol stubs
    
    typealias UIViewType = MKMapView
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MapView.UIViewType {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MapView.UIViewType, context: UIViewRepresentableContext<MapView>) {
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
