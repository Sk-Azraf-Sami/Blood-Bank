//
//  signupViewController.swift
//  Blood_Bank
//
//  Created by Abir Rahman on 26/11/23.
//

import UIKit
import Firebase

class signupViewController: UIViewController {
    
    @IBOutlet weak var emailtext: UITextField!
    
    @IBOutlet weak var passtext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        }
    


    @IBAction func signup(_ sender: Any) {
        
        guard let email = emailtext.text else { return }
        guard let password = passtext.text else { return }
        
        Auth.auth().createUser(withEmail: email, password: password) { firebaseResult, error in
            if let e = error {
                print("error")
            }
            else{
                self.performSegue(withIdentifier: "goToNext", sender: self)
                
            }
        }
    }
    
}
