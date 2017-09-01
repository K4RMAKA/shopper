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
    
    override func draw(_ rect: CGRect) {
        let size:CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size/2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.8)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
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
