//
//  LastViewController.swift
//  Blood_Bank
//
//  Created by Abir Rahman on 27/11/23.
//

import UIKit
import Firebase
class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var serial: UILabel!
    @IBOutlet weak var namee: UILabel!
    
    @IBOutlet weak var bloodd: UILabel!
   
    @IBOutlet weak var numberr: UILabel!
    
    
    @IBOutlet weak var adresss: UILabel!
    
        
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
class LastViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listBlood.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        
        
        //cell.nameTxt.text = "\(indexPath.row+1)"
        cell.serial.text = "Donor: \(indexPath.row+1)"
        cell.namee.text = listBlood[indexPath.row].name
        cell.bloodd.text = listBlood[indexPath.row].bloodGroup
        cell.adresss.text = listBlood[indexPath.row].contactNumber
        cell.numberr.text = listBlood[indexPath.row].address
        
        return cell
    }
    
    @IBOutlet weak var myTable: UITableView!
    var listBlood = [BloodData]()
    
    var bg = ""
    var thikana = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("blood: \(bg)")
        print("Address: \(thikana)")
        // Configure Firebase
    
        
        // Fetch data from Firebase
        fetchDataFromFirebase()
        
        myTable.tableFooterView = UIView(frame: .zero)
    }
    
    // Function to fetch data from Firebase
    // Function to fetch data from Firebase
    func fetchDataFromFirebase() {
        let databaseRef = Database.database().reference().child("donor_info")
        
        databaseRef.observe(.value) { [weak self] snapshot in
            guard let self = self else { return }
            
            self.listBlood.removeAll() // Clear the existing data
            
            for child in snapshot.children {
                if let snapshot = child as? DataSnapshot,
                   let donorInfo = snapshot.value as? [String: Any] {
                    
                    // Extract donor information from the snapshot
                    let name = donorInfo["name"] as? String ?? ""
                    let address = donorInfo["address"] as? String ?? ""
                    let number = donorInfo["number"] as? String ?? ""
                    let grp = donorInfo["grp"] as? String ?? ""
                    let available = donorInfo["available"] as? String ?? ""
                    
                    if (self.bg.isEmpty || grp == self.bg) && (self.thikana.isEmpty || address == self.thikana) && (available == "yes") {
                        // Create a BloodData object and add it to the list
                        let bloodData = BloodData(name: name, bloodGroup: grp, contactNumber: number, address: address)
                        self.listBlood.append(bloodData)
                    }
                }
            }
            
            // Reload the table view to reflect the updated data
            self.myTable.reloadData()
            
            // Check if no matches found and show a message
            if self.listBlood.isEmpty {
                self.showNoMatchFoundMessage()
            }
        }
    }

    // Function to display a "No match found" message
    func showNoMatchFoundMessage() {
        let alertController = UIAlertController(title: "No Match Found", message: "Sorry, no matches were found.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }

}
