//
//  TeleTestViewController.swift
//  Blood_Bank
//
//  Created by Abir Rahman on 27/11/23.
//

import UIKit

class TeleTestViewController: UIViewController {
    
    @IBOutlet weak var nametxt: UITextField!
    
    @IBOutlet weak var phonetxt: UITextField!
    
    @IBOutlet weak var bgtxt: UITextField!
    
    @IBOutlet weak var addresstxt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func requst(_ sender: Any) {
        
        guard let name = nametxt.text,
              let phone = phonetxt.text,
              let bloodGroup = bgtxt.text,
              let address = addresstxt.text else {
            // Handle error or show an alert for incomplete data
            print("Incomplete data")
            return
                                                }
        
        let apiKey = "6486965804:AAFrhv0wjmZwZrtSKSn5zlRH-WJdH-kHCI0"
        let chatId = "-4091487083"
        let apiUrl = "https://api.telegram.org/bot\(apiKey)/sendMessage"
        let message = "Name: \(name)\nPhone: \(phone)\nBlood Group: \(bloodGroup)\nAddress: \(address)"
        
        guard let url = URL(string: apiUrl) else {
            print("Invalid URL")
            return
                                 }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let parameters: [String: Any] = [
            "chat_id": chatId,
            "text": message
        ]
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
        } catch {
            print("Error creating JSON body")
            return
        }
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print("Error: \(error.localizedDescription)")
            } else if let data = data {
                if let responseString = String(data: data, encoding: .utf8) {
                    print("Response: \(responseString)")
                    // Clear text fields after successful request
                    DispatchQueue.main.async {
                        self.nametxt.text = ""
                        self.phonetxt.text = ""
                        self.bgtxt.text = ""
                        self.addresstxt.text = ""
                    }
                } else {
                    print("Invalid response data")
                }
            }
        }
        
        task.resume()
        self.performSegue(withIdentifier: "sent", sender: self)
    }
  
}
