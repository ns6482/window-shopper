//
//  Wage.swift
//  window-shopper
//
//  Created by Nehal Soni on 13/08/2018.
//  Copyright © 2018 Nehal Soni. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        print(Int(round(price/wage)))
        return Int(ceil(price/wage))
    }
}
