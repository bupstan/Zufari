//
//  SafariExtensionViewController.swift
//  ZUfari Extension
//
//  Created by Ye Wai Yan on 7/14/19.
//  Copyright © 2019 Ye Wai Yan. All rights reserved.
//

import SafariServices
import AppKit

class SafariExtensionViewController: SFSafariExtensionViewController {
    @IBOutlet var unicodeTextView: PlaceholderTextView!
    @IBOutlet var zawgyiTextView: PlaceholderTextView!
    
    var defaultTextColor: NSColor = NSColor(red: 1, green: 1, blue: 1, alpha: 0.85)
    var unicodeFont: NSFont!
    var zawgyiFont: NSFont!
    
    override func viewDidLoad() {
        self.preferredContentSize = NSMakeSize(self.view.frame.size.width, self.view.frame.size.height);
        
        defaultTextColor = NSColor(named: NSColor.Name("textColorW"))!
        
        unicodeFont = NSFont(name: "Pyidaungsu", size: 13)
        zawgyiFont = NSFont(name: "Zawgyi-One", size: 13)
        
        unicodeTextView.delegate = self
        unicodeTextView.font = unicodeFont
        var placeholderString = NSAttributedString(string: "Insert Unicode", attributes: [NSAttributedString.Key.foregroundColor:defaultTextColor.withAlphaComponent(0.8), NSAttributedString.Key.font:unicodeFont as Any])
        unicodeTextView.placeholderAttributedString = placeholderString
        unicodeTextView.textContainerInset = NSSize(width: 10, height: 10)
        
        zawgyiTextView.delegate = self
        zawgyiTextView.font = zawgyiFont
        placeholderString = NSAttributedString(string: "Insert Zawgyi", attributes: [NSAttributedString.Key.foregroundColor:defaultTextColor.withAlphaComponent(0.8), NSAttributedString.Key.font:zawgyiFont as Any])
        zawgyiTextView.placeholderAttributedString = placeholderString
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
        if (editor.string == "") {
            editor.textColor = defaultTextColor
            if (editor == unicodeTextView) {
                unicodeTextView.font = unicodeFont
            } else {
                zawgyiTextView.font = zawgyiFont
            }
        }
        
        if (editor == unicodeTextView) {
            zawgyiTextView.string = ZUConvert.convertToZawgyi(editor.string)
            zawgyiTextView.font = zawgyiFont
            
        } else {
            unicodeTextView.string = ZUConvert.convertToUnicode(editor.string)
            unicodeTextView.font = unicodeFont
            
        }
    }
}
