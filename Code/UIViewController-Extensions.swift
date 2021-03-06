//
//  UIViewController-Extensions.swift
//  Blog
//
//  Created by Boris Bügling on 28/01/15.
//  Copyright (c) 2015 Contentful GmbH. All rights reserved.
//

import UIKit

extension UIViewController {
    func addInfoButton() {
        let infoButton = UIButton(type: .InfoLight) as UIButton
        infoButton.addTarget(self, action: "infoTapped", forControlEvents: .TouchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: infoButton)
    }

    func infoTapped() {
        let aboutUs = UINavigationController(rootViewController: CDAAboutUsViewController())
        aboutUs.topViewController?.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Stop, target:aboutUs, action: "dismissAnimated")
        presentViewController(aboutUs, animated: true, completion: nil)
    }

    func dismissAnimated() {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
