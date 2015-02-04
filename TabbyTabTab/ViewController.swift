//
//  ViewController.swift
//  TabbyTabTab
//
//  Created by Kyle Magnesen on 2/4/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UITabBarController, DownloadKittenViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        for vc in viewControllers! {
            // as? is a conditional cast, if 'vc' "isa" DownloadKittenVC then
            // downloadKittenVC will be assigned, otherwise
            // downloadKittenVC will be nil
            if let downloadKittenViewController = vc as? DownloadKittenViewController {
                downloadKittenViewController.delegate = self
            }
        }
    }

    func kittenDownloaded(image: UIImage) {
        let displayKittenViewController = viewControllers![0] as DisplayKittenViewController
        displayKittenViewController.image = image
        selectedViewController = displayKittenViewController
    }
}

