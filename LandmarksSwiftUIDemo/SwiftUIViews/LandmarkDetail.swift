//
//  ContentView.swift
//  LandmarksSwiftUIDemo
//
//  Created by shivani Bajaj on 1/2/20.
//  Copyright © 2020 Shivani Bajaj. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
    
        VStack {
            
            MapView(coordinate: landmark.locationCoordinate).edgesIgnoringSafeArea(.top).frame(width: nil, height: 300, alignment: .center)
            CircleImage(image: landmark.image).offset(x: 0, y: -100).padding(.bottom, -100)
            VStack(alignment: .leading, spacing: 8) {
                Text(landmark.name).font(.title).foregroundColor(.red)
                HStack {
                    Text(landmark.park).font(.subheadline)
            
                    Spacer()
                    Text(landmark.state).font(.subheadline).foregroundColor(.green)
                }
            }.padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 12))
            Divider().shadow(color: .red, radius: 5, x: 0, y: 0)
            Spacer()

        }.navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}

