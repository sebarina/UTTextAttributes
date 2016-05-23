//
//  UTTextAttributes.swift
//  UTTextAttributes
//
//  Created by Sebarina Xu on 5/23/16.
//  Copyright © 2016 liufan. All rights reserved.
//

import UIKit


public class UTTextAttributes {
    public private(set) var dictionary : [String: AnyObject] = [:]
    
    public init() {
        dictionary[NSParagraphStyleAttributeName] = paragraphStyle
    }
    
    /// The paragraph style attribute.
    public var paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle() {
        didSet {
            dictionary[NSParagraphStyleAttributeName] = paragraphStyle
        }
    }
    
    public func font(name: String, size: CGFloat) {
        dictionary[NSFontAttributeName] = UIFont(name: name, size: size) 
    }
    
    public var textColor : UIColor? {
        didSet {
            dictionary[NSForegroundColorAttributeName] = textColor
        }
    }
    
    public var textBackgroundColor : UIColor? {
        didSet {
            dictionary[NSBackgroundColorAttributeName] = textBackgroundColor
        }
    }
    
    public func underline(style: NSUnderlineStyle, color: UIColor) {
        dictionary[NSUnderlineStyleAttributeName] = NSNumber(integer: style.rawValue)
        dictionary[NSUnderlineColorAttributeName] = color
    }
    
    public func stroke(width: NSNumber, color: UIColor) {
        dictionary[NSStrokeWidthAttributeName] = width
        dictionary[NSStrokeColorAttributeName] = color
    }
    
    public func shadow(color: UIColor, offset: CGSize, radius: CGFloat) {
        let shadow = NSShadow()
        shadow.shadowOffset = offset
        shadow.shadowColor = color
        shadow.shadowBlurRadius = radius
        dictionary[NSShadowAttributeName] = shadow
    }
    
    public var baselineIndent : CGFloat = 0  {
        didSet {
            dictionary[NSBaselineOffsetAttributeName] = baselineIndent as NSNumber
        }
    }
    
    public func textStyle(alignment: NSTextAlignment, lineBreakMode: NSLineBreakMode) {
        paragraphStyle.alignment = alignment
        paragraphStyle.lineBreakMode = lineBreakMode
    }
    
    public func lineStyle(lineSpacing: CGFloat, paragraphSpacing: CGFloat) {
        paragraphStyle.lineSpacing = lineSpacing
        paragraphStyle.paragraphSpacing = paragraphSpacing
    }
    
    public func addTextEffect() {
        dictionary[NSTextEffectAttributeName] = NSTextEffectLetterpressStyle
    }
    
    public func attachment(data: NSData?, type: String) {
        dictionary[NSAttachmentAttributeName] = NSTextAttachment(data: data, ofType: type)
    }
    
    public func link(url: NSURL?) {
        dictionary[NSLinkAttributeName] = url//NSURL(string: url)
    }
    
    public func link(urlString: String) {
        dictionary[NSLinkAttributeName] = NSURL(string: urlString)
    }
    
}