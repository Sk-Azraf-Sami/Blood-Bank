//
//  loginViewController.swift
//  Blood_Bank
//
//  Created by Abir Rahman on 26/11/23.
//

import UIKit
import Firebase

class loginViewController: UIViewController {
    
    @IBOutlet weak var emailtext: UITextField!
    
    @IBOutlet weak var passtext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func login(_ sender: Any) {
        
        guard let email = emailtext.text else { return }
        guard let password = passtext.text else { return }
        
        Auth.auth().signIn(withEmail: email, password: password) { firebaseResult, error in
            if let e = error {
                self.showAlert(message: "Invalid Username or Password")
            }
            else{
                self.performSegue(withIdentifier: "goToNext", sender: self)
                
            }
        }
    }
    private func showAlert(message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
}
