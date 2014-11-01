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
    if let selectionController = primaryViewController as? PaletteSelectionContainer {
      if let displayController = secondaryViewController as? PaletteDisplayContainer {
        let selectedPalette = selectionController.currentlySelectedPalette()
        let displayedPalette = displayController.currentlyDisplayedPallette()
        if selectedPalette? != nil && selectedPalette == displayedPalette {
          return false
        }
      }
    }
    return true
  }
  
  func splitViewController(splitViewController: UISplitViewController, separateSecondaryViewControllerFromPrimaryViewController primaryViewController: UIViewController!) -> UIViewController? {
    if let paletteDisplayController = primaryViewController as? PaletteDisplayContainer {
      if paletteDisplayController.currentlyDisplayedPallette() != nil {
        return nil
      }
    }
    let vc = storyboard?.instantiateViewControllerWithIdentifier("NoPaletteSelected") as UIViewController
    return NavigationController(rootViewController: vc)
  }
  
}
