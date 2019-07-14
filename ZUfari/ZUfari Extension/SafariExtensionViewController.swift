//
//  SafariExtensionViewController.swift
//  ZUfari Extension
//
//  Created by Ye Wai Yan on 7/14/19.
//  Copyright © 2019 Ye Wai Yan. All rights reserved.
//

import SafariServices

class SafariExtensionViewController: SFSafariExtensionViewController {
    
    static let shared: SafariExtensionViewController = {
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width:320, height:240)
        return shared
    }()

}
