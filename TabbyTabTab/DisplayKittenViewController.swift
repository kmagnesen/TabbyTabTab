//
//  DisplayKittenViewController.swift
//  TabbyTabTab
//
//  Created by Kyle Magnesen on 2/4/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class DisplayKittenViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!

    var image: UIImage {
        set {
            imageView.image = newValue
        }
        get {
            return imageView.image!
        }
    }
}
