//
//  UIImageView+DownloadImage.swift
//  StoreSearch
//
//  Created by Bill Yu on 11/27/15.
//  Copyright © 2015 Bill Yu. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    func loadImageWithURL(url: NSURL) -> NSURLSessionDownloadTask {
        let session = NSURLSession.sharedSession()
        //1
        let downloadTask = session.downloadTaskWithURL(
            url, completionHandler: {
            [weak self] url, response, error in
            // 2
            if error == nil, let url = url,
                // 3
                data = NSData(contentsOfURL: url), image = UIImage(data: data) {
                    // 4
                    dispatch_async(dispatch_get_main_queue()) {
                        if let strongSelf = self {
                            strongSelf.image = image
                        }
                    }
                }
        })
        downloadTask.resume()
        return downloadTask
    }
}