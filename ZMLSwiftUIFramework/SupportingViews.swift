//
//  SupportingViews.swift
//  ZMLSwiftUIFramework
//
//  Created by Karan Karthic Neelamegan on 15/12/20.
//  Copyright © 2020 Karan Karthic Neelamegan. All rights reserved.
//

import SwiftUI
import ZMLKit


struct TextView: UIViewRepresentable {
    var textable: TextableProperties?
    
    func makeUIView(context: Context) -> UITextView {
        let textLabel = UITextView.init()
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.isScrollEnabled = false
        textLabel.showsVerticalScrollIndicator = false
        textLabel.showsHorizontalScrollIndicator = false
        textLabel.isEditable = false
        textLabel.isUserInteractionEnabled = ((textable?.renderAsHtml) != nil)
        textLabel.textContainerInset = UIEdgeInsets.zero
        textLabel.textContainer.lineFragmentPadding = 0;
        return textLabel
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = textable?.value
    }
    
}

