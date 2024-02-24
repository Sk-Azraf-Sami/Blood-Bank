//
//  FeatureViewController.swift
//  Blood_Bank
//
//  Created by Abir Rahman on 27/11/23.
//

import UIKit

class FeatureViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func join(_ sender: Any) {
        
        if let telegramURL = URL(string: "https://t.me/joinchat/daR9TtpKvoRiY2Q1") {
                if UIApplication.shared.canOpenURL(telegramURL) {
                    UIApplication.shared.open(telegramURL, options: [:], completionHandler: nil)
                } else {
                    print("Unable to open Telegram app.")
                    // Handle error or show an alert
                }
            }
    }
    

}
