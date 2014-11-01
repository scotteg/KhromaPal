//
//  PaletteContainer.swift
//  KhromaPal
//
//  Created by Scott Gardner on 11/1/14.
//  Copyright (c) 2014 RayWenderlich. All rights reserved.
//

import Foundation
@objc protocol PaletteDisplayContainer {
  func currentlyDisplayedPallette() -> ColorPalette?
}
@objc protocol PaletteSelectionContainer {
  func currentlySelectedPalette() -> ColorPalette?
}