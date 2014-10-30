//
//  TraitOverrideViewController.swift
//  KhromaPal
//
//  Created by Scott Gardner on 10/30/14.
//  Copyright (c) 2014 RayWenderlich. All rights reserved.
//

import UIKit

class TraitOverrideViewController: UIViewController {
  override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
    var traitOverride: UITraitCollection?
    if size.width > 320.0 {
      traitOverride = UITraitCollection(horizontalSizeClass: .Regular)
    }
    setOverrideTraitCollection(traitOverride, forChildViewController: childViewControllers[0] as UIViewController)
    super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
  }
}
