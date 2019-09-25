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
    NavigationView {
      List(hikes) { value in
        HikeCell(hike: value)
      }
      .navigationBarTitle(Text("Hikings"))
    }
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
  
struct HikeCell: View {
  let hike: Hike
  var body: some View {
    return NavigationLink(destination: Text(hike.name)) {
       HStack {
          Image(hike.imageURL)
            .resizable()
            .frame(width: 100.0,height: 100.0)
            .cornerRadius(16)
          VStack {
            Text(hike.name)
            VStack(alignment: .leading){
              Text(String(format: "%.2f",hike.miles))
            }
          }
      }
    }
 
  }
}
