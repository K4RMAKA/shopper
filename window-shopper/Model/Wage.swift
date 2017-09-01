//
//  Wage.swift
//  window-shopper
//
//  Created by Ding Zhiyi on 01/09/2017.
//  Copyright © 2017 Ding Zhiyi. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(forWage wage:Double, andPrice price:Double) -> Int{
        return Int(ceil(price/wage))
    }
}
