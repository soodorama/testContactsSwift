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

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension MainVC: CNContactFetchRequest {
    func fetchContacts() -> CNContact {
        var contacts = [CNContact]()
        let keys = [CNContactFormatter.descriptorForRequiredKeys(for: .fullName)]
        let request = CNContactFetchRequest(keysToFetch: keys)
        
        do {
            try self.contactStore.enumerateContactsWithFetchRequest(request) {
                (contact, stop) in
                // Array containing all unified contacts from everywhere
                contacts.append(contact)
            }
        }
        catch {
            print("unable to fetch contacts")
        }
    }
}
