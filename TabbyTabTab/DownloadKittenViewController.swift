//
//  DownloadKittenViewController.swift
//  TabbyTabTab
//
//  Created by Kyle Magnesen on 2/4/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

protocol DownloadKittenViewControllerDelegate {
    func kittenDownloaded(image: UIImage)
}

class DownloadKittenViewController: UIViewController {

    var delegate: DownloadKittenViewControllerDelegate?

    @IBAction func onDownloadKitten(sender: AnyObject) {
        let url = NSURL(string: "http://placekitten.com/g/500/700")!
        let rq = NSURLRequest (URL: url)
        NSURLConnection.sendAsynchronousRequest(rq, queue: NSOperationQueue.mainQueue()) {
            (response, data, error) in

            if let image = UIImage(data: data) {
                self.delegate?.kittenDownloaded(image)
            }
        }
    }
}
