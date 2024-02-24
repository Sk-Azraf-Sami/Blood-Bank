import UIKit
import Firebase

class updateViewController: UIViewController {
    
    @IBOutlet weak var add: UITextField!
    var bg1 = ""
    var p: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        print("jhgjh: \(bg1)")
        // Do any additional setup after loading the view.
    }

    @IBAction func off(_ sender: Any) {
        updateAvailability()
    }

    @IBAction func update(_ sender: Any) {
        updateAvailability()
    }

    private func updateAvailability() {
        // Reference to the 'donor_info' branch in the database
        let databaseRef = Database.database().reference().child("donor_info")

        // Query to check if the phone number matches any blood group
        let query = databaseRef.queryOrdered(byChild: "number").queryEqual(toValue: bg1)

        query.observeSingleEvent(of: .value) { snapshot in
            if snapshot.exists() {
                // Phone number exists in the database
                for child in snapshot.children {
                    guard let childSnapshot = child as? DataSnapshot,
                          let donorInfo = childSnapshot.value as? [String: Any] else { continue }

                    var updates: [String: Any] = donorInfo

                    if let address = self.add.text, !address.isEmpty {
                        updates["address"] = address
                    }

                    // Check the current value of "available" field and update it
                    if let currentAvailability = donorInfo["available"] as? String {
                        updates["available"] = (currentAvailability == "no") ? "yes" : "no"
                    }

                    databaseRef.child(childSnapshot.key).updateChildValues(updates)
                    self.showAlert(message: "Donor information updated successfully.")
                    //self.performSegue(withIdentifier: "home", sender: self)
                }
            } else {
                // Phone number not found in the database
                print("not enter")
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
