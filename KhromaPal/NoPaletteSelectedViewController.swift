//
//  NoPaletteSelectedViewController.swift
//  KhromaPal
//
//  Created by Scott Gardner on 11/1/14.
//  Copyright (c) 2014 RayWenderlich. All rights reserved.
//

class NoPaletteSelectedViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.hidesBackButton = true
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    if let svc = splitViewController {
      navigationItem.setLeftBarButtonItem(svc.displayModeButtonItem(), animated: true)
    }
  }
}
