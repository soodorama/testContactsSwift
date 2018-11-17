//
//  ViewController.swift
//  ContactNotifications
//
//  Created by Neil Sood on 11/11/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit
import Contacts

class MainVC: UIViewController {
    
    var contacts: [CNContact] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getContacts()
        
        
    }
    
    func getContacts() {
        
        let fetchRequest = CNContactFetchRequest(keysToFetch: [CNContactGivenNameKey as CNKeyDescriptor, CNContactFamilyNameKey as CNKeyDescriptor, CNContactMiddleNameKey as CNKeyDescriptor, CNContactEmailAddressesKey as CNKeyDescriptor,CNContactPhoneNumbersKey as CNKeyDescriptor])
        
        fetchRequest.sortOrder = CNContactSortOrder.userDefault
        
        let store = CNContactStore()
        
        do {
            try store.enumerateContacts(with: fetchRequest, usingBlock: { (contact, stop) -> Void in
                print(contact.phoneNumbers.first?.value ?? "no")
                self.contacts.append(contact)
                
            })
        }
        catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
}

