import UIKit
import Firebase

class AddViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var grp: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func donorbtn(_ sender: Any) {
        // Ensure that the user has entered values for all fields
        guard let nameText = name.text,
              let addressText = address.text,
              let numberText = number.text,
              let grpText = grp.text else {
            // Handle the case where any of the fields is empty
            print("Please fill in all fields.")
            return
        }

        // Set default value for 'available'
        let available = "yes"

        // Create a dictionary to represent the donor information
        let donorInfo = [
            "name": nameText,
            "address": addressText,
            "number": numberText,
            "grp": grpText,
            "available": available
        ]

        // Reference to the 'donor_info' branch in the database
        let databaseRef = Database.database().reference().child("donor_info")

        // Generate a new child node with a unique key
        let newDonorRef = databaseRef.childByAutoId()

        // Set the donor information under the new child node
        newDonorRef.setValue(donorInfo) { error, _ in
            if let error = error {
                print("Error saving donor information: \(error.localizedDescription)")
            } else {
                print("Donor information saved successfully.")
            }
        }
        self.performSegue(withIdentifier: "done", sender: self)
    }
}
