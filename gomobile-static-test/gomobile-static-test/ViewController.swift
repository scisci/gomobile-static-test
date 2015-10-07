//
//  ViewController.swift
//  gomobile-static-test
//
//  Created by x on 10/7/15.
//  Copyright (c) 2015 scisci. All rights reserved.
//

import UIKit

import Lib

class Test {
  static let sharedInstance = Test();
  
  
  var a: GoLibObject?
  
  init() {
    a = GoLibNewObject("hello")
  }
  
  func doSomething() {
    var error: NSError?
    a!.Do("something", error: &error)
  }
}

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func clicked(sender: UIButton) {
    println("clicked")
    Test.sharedInstance.doSomething()
  }


}

