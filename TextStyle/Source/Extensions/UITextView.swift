//
//  UITextView.swift
//  TextStyle
//
//  Created by Domas on 12/10/2016.
//  Copyright © 2016 Trafi. All rights reserved.
//

import UIKit

public extension UITextView {
    #if TARGET_INTERFACE_BUILDER
    @IBInspectable var textStyle: String {
        get { return "" }
        set {
            guard let textStyle = (TextStyle.self as? IBInspectable.Type)?.stylesDictionary[newValue] else { return }
            set(textStyle: textStyle)
        }
    }
    #endif
    
    func set(textStyle textStyle: TextStyle) {
        if let textColor = textStyle.color {
            self.textColor = textColor
        }
        if let font = textStyle.font {
            self.font = font
        }
        if let textAlignment = textStyle.alignment {
            self.textAlignment = textAlignment
        }
    }
}

/// `UITextView` that renders in Interface Builder as an `@IBDesignbale`
@IBDesignable public class UITextViewDesignable: UILabel {}