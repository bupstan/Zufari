//
//  SafariExtensionViewController.swift
//  ZUfari Extension
//
//  Created by Ye Wai Yan on 7/14/19.
//  Copyright © 2019 Ye Wai Yan. All rights reserved.
//

import SafariServices

class SafariExtensionViewController: SFSafariExtensionViewController {
    @IBOutlet var unicodeTextView: NSTextView!
    @IBOutlet var zawgyiTextView: NSTextView!
    
    override func viewDidLoad() {
        self.preferredContentSize = NSMakeSize(self.view.frame.size.width, self.view.frame.size.height);
        unicodeTextView.delegate = self
        unicodeTextView.layer?.cornerRadius = 8
        unicodeTextView.textContainerInset = NSSize(width: 10, height: 10)
        
        
        zawgyiTextView.delegate = self
        zawgyiTextView.superview?.superview?.layer?.masksToBounds = true
        zawgyiTextView.superview?.superview?.layer?.cornerRadius = 8
        zawgyiTextView.textContainerInset = NSSize(width: 10, height: 10)
        
        super.viewDidLoad()
    }
    
    static let shared: SafariExtensionViewController = {
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width:320, height:240)
        return shared
    }()

}

extension SafariExtensionViewController: NSTextViewDelegate {
    func textDidChange(_ notification: Notification) {
        guard let editor = notification.object as? NSTextView else { return }
        if (editor == zawgyiTextView) {
            zawgyiTextView.string = Rabbit.uni2zg("")
        }
    }
}
