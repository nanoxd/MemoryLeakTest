//
//  ViewController.swift
//  MemoryLeakTest
//
//  Created by Fernando Paredes on 9/28/14.
//  Copyright (c) 2014 Fernando Paredes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let person = Person(name: "bob")
    person.performAction()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  
}

