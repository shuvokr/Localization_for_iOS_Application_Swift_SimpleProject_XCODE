//
//  ViewController.swift
//  SimpleLocalizationProject_iOS
//
//  Created by sk on 11/28/17.
//  Copyright © 2017 sk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var buttonTitle: String = ""
    var popUpTitle: String = ""
    var popUpMessage: String = ""
    var popUpExitTitle: String = ""

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.createLocalizedString()
        self.createButton()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createLocalizedString()
    {
        let sms = "Message...." // add this veriable in a localized string
        
        buttonTitle = String(format: NSLocalizedString(Bundle.main.localizedString(forKey: "Key_ButtonTitle", value: nil, table: "Localized"), comment: ""))
        
        popUpTitle = String(format: NSLocalizedString(Bundle.main.localizedString(forKey: "Key_popUpTitle", value: nil, table: "Localized"), comment: ""))
        
        
        popUpMessage = String(format: NSLocalizedString(Bundle.main.localizedString(forKey: "Key_popUpMessage", value: nil, table: "Localized"), comment: ""), sms)
        
        popUpExitTitle = String(format: NSLocalizedString(Bundle.main.localizedString(forKey: "Key_popUpExitTitle", value: nil, table: "Localized"), comment: ""))
    }
    
    func createButton()
    {
        let button = UIButton()
        button.frame = CGRect(x:100, y:100, width:120, height:40)
        button.center = self.view.center
        button.setTitle(buttonTitle, for: .normal)
        button.backgroundColor = UIColor.red
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.cretaeAlertView), for: .touchUpInside)
    }
    func cretaeAlertView()
    {
        let alert = UIAlertController(title: popUpTitle, message: popUpMessage, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: popUpExitTitle, style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

