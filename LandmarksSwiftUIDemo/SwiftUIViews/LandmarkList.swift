//
//  LandmarkList.swift
//  LandmarksSwiftUIDemo
//
//  Created by shivani Bajaj on 1/3/20.
//  Copyright © 2020 Shivani Bajaj. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }.navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { device in
            LandmarkList().previewDevice(PreviewDevice(rawValue: device)).previewDisplayName(device)
        }
    }
}
