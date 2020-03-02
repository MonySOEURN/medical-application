//
//  Utilities.swift
//  MedicalApplication
//
//  Created by Mony SOEURN on 3/2/2563 BE.
//  Copyright © 2563 BE Mony SOEURN. All rights reserved.
//

import UIKit

class Utilities {

    static func styleTextField(_ textField: UITextField) {
        // create the buttom line
        let buttomLine = CALayer()
        
        buttomLine.frame = CGRect(x: 0, y: textField.frame.height - 2, width: textField.frame.width, height: 2)
        
        buttomLine.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1).cgColor
        
        // Remove border on TextField
        textField.borderStyle = .none
        
        // Add the line to the text field
        textField.layer.addSublayer(buttomLine)
        
    }
    
    static func styleFilledButton(_ button: UIButton) {
        // Filled round corner style
        button.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    
    static func styleHollowButton(_ button: UIButton) {
        // Hollow round corner style
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.black
    }
    
    // Password Validation Type - 1
    static func isPasswordValid(_ password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
    // Password Validation Type - 2
    //    func isPasswordValid2(_ password : String) -> Bool{
    //        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}$")
    //        return passwordTest.evaluate(with: password)
    //    }
}
