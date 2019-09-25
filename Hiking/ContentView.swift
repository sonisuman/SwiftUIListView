//
//  ContentView.swift
//  Hiking
//
//  Created by Soni Suman on 8/22/19.
//  Copyright © 2019 Soni Suman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var hikes = Hike.All()
  var body: some View {
    List(hikes) { value in
      HStack {
        Image(value.imageURL)
        .resizable()
          .frame(width: 100.0,height: 100.0)
        .cornerRadius(16)
        VStack(alignment: .leading) {
          Text(value.name)
        }
        VStack(alignment: .leading){
          Text(String(format: "%.2f",value.miles))
        }
      }
    }
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
