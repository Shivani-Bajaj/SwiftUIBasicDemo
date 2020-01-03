//
//  LandmarkRow.swift
//  LandmarksSwiftUIDemo
//
//  Created by shivani Bajaj on 1/3/20.
//  Copyright © 2020 Shivani Bajaj. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image.resizable().frame(width: 50, height: 50, alignment: .leading)
            Text(landmark.name)
            Spacer()
        }.padding(.leading, 12)
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
