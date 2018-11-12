//
//  ContactCell.swift
//  ContactNotifications
//
//  Created by Neil Sood on 11/11/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {
    
    @IBOutlet weak var selectionButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBAction func selectionPressed(_ sender: UIButton) {
        print("Selected")
        if sender.backgroundImage(for: .normal) == UIImage(named: "empty_selection") {
            // switch to full selection
            // add to selected array
            sender.setBackgroundImage(UIImage(named: "full_selection"), for: .normal)
        }
        else {
            // switch to empty selection
            // remove from selected array
            sender.setBackgroundImage(UIImage(named: "empty_selection"), for: .normal)
        }
    }
}
