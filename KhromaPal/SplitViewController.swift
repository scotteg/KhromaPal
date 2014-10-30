//
//  SplitViewController.swift
//  KhromaPal
//
//  Created by Scott Gardner on 10/30/14.
//  Copyright (c) 2014 RayWenderlich. All rights reserved.
//

import UIKit

class SplitViewController: UISplitViewController, UISplitViewControllerDelegate {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    delegate = self
  }
  
  // MARK: - UISplitViewControllerDelegate
  
  func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController!, ontoPrimaryViewController primaryViewController: UIViewController!) -> Bool {
    return true
  }
  
}
