//
//  dhurViewController.swift
//  Blood_Bank
//
//  Created by Abir Rahman on 28/11/23.
//

import UIKit
import Firebase
class dhurViewController: UIViewController {

    @IBOutlet weak var phonet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func go(_ sender: Any) {
        // Ensure that the user has entered a phone number
        guard let phoneNumber = phonet.text, !phoneNumber.isEmpty else {
            showAlert(message: "Please enter a phone number.")
            return
        }

        // Reference to the 'donor_info' branch in the database
        let databaseRef = Database.database().reference().child("donor_info")

        // Query to check if the phone number matches any blood group
        let query = databaseRef.queryOrdered(byChild: "number").queryEqual(toValue: phoneNumber)

        query.observeSingleEvent(of: .value) { snapshot in
            if snapshot.exists() {
                // Phone number exists in the database
                // Navigate to the updateViewController with the retrieved phone number
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "updateViewController") as! updateViewController
                vc.bg1 = phoneNumber
                self.navigationController?.pushViewController(vc, animated: true)
            } else {
                // Phone number not found in the database
                self.showAlert(message: "Donor Not Registered")
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
