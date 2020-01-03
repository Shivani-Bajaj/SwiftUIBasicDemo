//
//  ContentView.swift
//  LandmarksSwiftUIDemo
//
//  Created by shivani Bajaj on 1/2/20.
//  Copyright © 2020 Shivani Bajaj. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            MapView().edgesIgnoringSafeArea(.top).frame(width: nil, height: 300, alignment: .center)
            CircleImage().offset(x: 0, y: -100).padding(.bottom, -100)
            VStack(alignment: .leading, spacing: 8) {
                Text("Turtle Rock").font(.title).foregroundColor(.red)
                HStack {
                    Text("Chandigarh national park").font(.subheadline)
            
                    Spacer()
                    Text("Chandigarh").font(.subheadline).foregroundColor(.green)
                }
            }.padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 12))
            Divider().shadow(color: .red, radius: 5, x: 0, y: 0)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
