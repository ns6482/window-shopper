//
//  ViewController.swift
//  window-shopper
//
//  Created by Nehal Soni on 08/08/2018.
//  Copyright © 2018 Nehal Soni. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        let calcBtn = UIButton(frame: CGRect(x:0, y:0, width: view.frame.size.width, height: 60))
        
        calcBtn.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal) // for => state of button
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true;
        hoursLbl.isHidden = true;
    
    }

    @objc func calculate() {

        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text
        {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false;
                hoursLbl.isHidden = false;
            
                let hours = Wage.getHours(forWage: wage, andPrice: price)
                resultLbl.text = "\(hours)"
            }
        }
       
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true;
        hoursLbl.isHidden = true;
        wageTxt.text = "";
        priceTxt.text = "";
    }
}

