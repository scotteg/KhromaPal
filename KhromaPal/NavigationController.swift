//
//  NavigationController.swift
//  KhromaPal
//
//  Created by Scott Gardner on 11/1/14.
//  Copyright (c) 2014 RayWenderlich. All rights reserved.
//

class NavigationController: UINavigationController, PaletteDisplayContainer, PaletteSelectionContainer {
  
  // MARK: - PaletteDisplayContainer
  func currentlyDisplayedPallette() -> ColorPalette? {
    if let tvc = topViewController as? PaletteDisplayContainer {
      return tvc.currentlyDisplayedPallette()
    }
    return nil
  }
  
  // MARK: - PaletteSelectionContainer
  
  func currentlySelectedPalette() -> ColorPalette? {
    if let tvc = topViewController as? PaletteSelectionContainer {
      return tvc.currentlySelectedPalette()
    }
    return nil
  }
  
}
