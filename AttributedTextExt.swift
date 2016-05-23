//
//  AttributedTextExt.swift
//  UTTextAttributes
//
//  Created by Sebarina Xu on 5/23/16.
//  Copyright © 2016 liufan. All rights reserved.
//

import Foundation

extension NSRange {
    init(_ range: Range<Int>) {
        self = NSRange(location: range.first ?? 0, length: range.count)
    }
    
    init(_ string: NSString) {
        self = NSRange(location: 0, length: string.length)
    }
}

extension NSAttributedString {
    public convenience init(string: String, attributes: UTTextAttributes? = nil) {
        self.init(string: string, attributes: attributes?.dictionary)
    }
}

extension NSMutableAttributedString {
    
    public func setAttributes(attributes: UTTextAttributes) {
        setAttributes(attributes, range: NSRange(mutableString))
    }
    
    public func setAttributes(attributes: UTTextAttributes, location: Int, length: Int) {
        setAttributes(attributes, range: NSRange(location: location, length: length))
    }
    
    public func setAttributes(attributes: UTTextAttributes, range: NSRange) {
        setAttributes(attributes.dictionary, range: range)
    }
    
    public func addAttributes(attributes: UTTextAttributes) {
        addAttributes(attributes, range: NSRange(mutableString))
    }
    
    public func addAttributes(attributes: UTTextAttributes, location: Int, length: Int) {
        addAttributes(attributes, range: NSRange(location: location, length: length))
    }
    
    public func addAttributes(attributes: UTTextAttributes, range: NSRange) {
        addAttributes(attributes.dictionary, range: range)
    }
}