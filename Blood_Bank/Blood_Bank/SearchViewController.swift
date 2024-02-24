//
//  SearchViewController.swift
//  Blood_Bank
//
//  Created by Abir Rahman on 27/11/23.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var Table: UITableView!
    @IBOutlet weak var myTextField: UITextField!
    var searching = false
    var bldgrp = ["A+","B+","O+"]
    var filteredbldgrp = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myTextField.addTarget(self, action: #selector(searchRecord), for: .editingChanged)
    }
    @objc func searchRecord(sender:UITextField)
    {
        
    }
    


}
