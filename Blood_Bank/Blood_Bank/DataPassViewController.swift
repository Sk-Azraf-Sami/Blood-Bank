//
//  DataPassViewController.swift
//  Blood_Bank
//
//  Created by Abir Rahman on 27/11/23.
//

import UIKit

class DataPassViewController: UIViewController {

    
    @IBOutlet weak var bgtxt: UITextField!
    
    @IBOutlet weak var addresstxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func searchbtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LastViewController") as! LastViewController
        
        vc.bg = bgtxt.text!
        vc.thikana = addresstxt.text!
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
}
