//
//  ViewController.swift
//  window-shopper
//
//  Created by Ding Zhiyi on 01/09/2017.
//  Copyright © 2017 Ding Zhiyi. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageText: MyTextField!
    @IBOutlet weak var priceText: MyTextField!
    
    @IBOutlet weak var hourLbl: UILabel!
    @IBOutlet weak var numberLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calcBtn.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageText.inputAccessoryView = calcBtn
        priceText.inputAccessoryView = calcBtn
        
        numberLbl.isHidden = true
        hourLbl.isHidden = true
        
    }
    @IBAction func clearBtnPressed(_ sender: Any) {
        wageText.text = ""
        priceText.text = ""
        numberLbl.isHidden = true
        hourLbl.isHidden = true
    }
    
    @objc func calculate(){
        if let wage = wageText.text,let price = priceText.text{
            if let _wage = Double(wage), let _price = Double(price){
                numberLbl.text = "\(Wage.getHours(forWage: _wage, andPrice: _price))"
                view.endEditing(true)
                numberLbl.isHidden = false
                hourLbl.isHidden = false
            }
        }
    }

}

