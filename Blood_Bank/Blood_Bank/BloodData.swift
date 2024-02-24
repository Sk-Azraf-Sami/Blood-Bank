//
//  BloodData.swift
//  Blood_Bank
//
//  Created by Abir Rahman on 27/11/23.
//

import Foundation

class BloodData {
    var name: String
    var bloodGroup: String
    var contactNumber: String
    var address: String
    
    init(name: String, bloodGroup: String, contactNumber: String, address: String) {
        self.name = name
        self.bloodGroup = bloodGroup
        self.contactNumber = contactNumber
        self.address = address
    }
}
