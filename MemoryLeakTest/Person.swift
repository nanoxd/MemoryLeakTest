//
//  Person.swift
//  MemoryLeakTest
//
//  Created by Fernando Paredes on 9/28/14.
//  Copyright (c) 2014 Fernando Paredes. All rights reserved.
//

import Foundation

class Person {
  let name: String
  private let actionClosure: (() -> ())!

  init(name: String) {
    self.name = name

    actionClosure = {
      [unowned self] () -> () in
      println("I am \(self.name)")
    }
  }

  func performAction() {
    actionClosure()
  }

  deinit {
    println("\(name) is being deinitialized")
  }
}