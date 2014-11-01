//
//  UIViewControllerShow.swift
//  KhromaPal
//
//  Created by Scott Gardner on 11/1/14.
//  Copyright (c) 2014 RayWenderlich. All rights reserved.
//

import Foundation
extension UIViewController {
  func showVCWillResultInPush(sender: AnyObject?) -> Bool {
    if let target = targetViewControllerForAction("showVCWillResultInPush:", sender: sender) {
      return target.showVCWillResultInPush(sender)
    } else {
      return false
    }
  }
  func showDetailVCWillResultInPush(sender: AnyObject?) -> Bool {
    if let target = targetViewControllerForAction("showDetailVCWillResultInPush:", sender: sender) {
      return target.showDetailVCWillResultInPush(sender)
    } else {
      return false
    }
  }
}
extension UINavigationController {
  override func showVCWillResultInPush(sender: AnyObject?) -> Bool {
    return true
  }
}
extension UISplitViewController {
  override func showDetailVCWillResultInPush(sender: AnyObject?) -> Bool {
    if collapsed {
      if let primaryVC = viewControllers.last as? UIViewController {
        return primaryVC.showVCWillResultInPush(sender)
      }
      return false
    } else {
      return false
    }
  }
}