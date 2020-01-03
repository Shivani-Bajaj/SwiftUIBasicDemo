//
//  CircleImage.swift
//  LandmarksSwiftUIDemo
//
//  Created by shivani Bajaj on 1/2/20.
//  Copyright © 2020 Shivani Bajaj. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image.frame(width: 200, height: 200, alignment: .center).clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 5)).shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
