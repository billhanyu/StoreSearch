//
//  DimmingPresentationController.swift
//  StoreSearch
//
//  Created by Bill Yu on 11/27/15.
//  Copyright © 2015 Bill Yu. All rights reserved.
//

import Foundation
import UIKit

class DimmingPresentationController: UIPresentationController {
    
    override func shouldRemovePresentersView() -> Bool {
        return false
    }
}