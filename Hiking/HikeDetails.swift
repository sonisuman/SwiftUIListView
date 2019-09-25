//
//  HikeDetails.swift
//  Hiking
//
//  Created by Soni Suman on 9/25/19.
//  Copyright © 2019 Soni Suman. All rights reserved.
//

import Foundation
import SwiftUI

struct HikeDetails: View {
  let hike : Hike
  var body:  some View {
    return
      VStack {
        Image(hike.imageURL)
        .resizable()
          .aspectRatio(contentMode: .fit)
        Text(hike.name)
          .font(.largeTitle)
      }.navigationBarTitle(Text(hike.name),displayMode: .inline)
  }
}
