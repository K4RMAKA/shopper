//
//  MyTextField.swift
//  window-shopper
//
//  Created by Ding Zhiyi on 01/09/2017.
//  Copyright © 2017 Ding Zhiyi. All rights reserved.
//

import UIKit

@IBDesignable

class MyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizedTF()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizedTF()
    }
    
    func customizedTF(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if placeholder == nil{
            placeholder = " "
        }
        
        let place = NSAttributedString(string: placeholder!,
                                       attributes: [.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

}
