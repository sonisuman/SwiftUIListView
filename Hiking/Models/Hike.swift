//
//  Hike.swift
//  Hiking
//
//  Created by Soni Suman on 8/22/19.
//  Copyright © 2019 Soni Suman. All rights reserved.
//

import Foundation
import SwiftUI

struct Hike : Identifiable {
  
  var id = UUID()
  var name: String
  var imageURL: String
  var miles: Double
}

extension Hike {
  static func All()-> [Hike] {
    return [Hike(name: "Hike1", imageURL: "onepic", miles: 10),
            Hike(name: "Hike2", imageURL: "twopic", miles: 20),
            Hike(name: "Hike3", imageURL: "thirdpic", miles: 30)]
  }
}
