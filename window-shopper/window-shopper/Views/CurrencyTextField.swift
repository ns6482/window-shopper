//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Nehal Soni on 12/08/2018.
//  Copyright © 2018 Nehal Soni. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTextField: UITextField {

    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currenycLabel = UILabel(frame: CGRect(x: 5, y: frame.size.height/2-size/2, width: size, height: size))
        currenycLabel.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        currenycLabel.textAlignment = .center
        currenycLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currenycLabel.layer.cornerRadius = 5.0
        currenycLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        currenycLabel.text = formatter.currencySymbol
        addSubview(currenycLabel)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p,
                                           attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
