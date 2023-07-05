//
//  StopWatch.swift
//  WorkOut-Time-iOS
//
//  Created by 민 on 2023/07/05.
//

import Foundation

class Stopwatch: NSObject {
  var counter: Double
  var timer: Timer
  
  override init() {
    counter = 0.0
    timer = Timer()
  }
}
