//
//  UITextView.swift
//  TextStyle
//
//  Created by Domas on 12/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit

// MARK: TextStylable

extension UITextView: TextStylable {
    public func set(textStyle: TextStyle) {
        if let textColor = textStyle.color {
            self.textColor = textColor
        }
        if let font = textStyle.font {
            self.font = font
        }
        if let textAlignment = textStyle.alignment {
            self.textAlignment = textAlignment
        }

        if textStyle.lineHeight != nil {
            print("Setting Line Height directly on UITextView not supported, use String().with(textStyle: TextStyle) -> NSAttributedString")
        }

        if textStyle.uppercased == true {
            print("Setting uppercased directly on UITextView not supported, use String().with(textStyle: TextStyle) -> NSAttributedString")
        }
    }
}

// MARK: Interface Builder

extension UITextView {
    var textStyle: String {
        get { return "" }
        set { set(textStyle: newValue) }
    }
}
