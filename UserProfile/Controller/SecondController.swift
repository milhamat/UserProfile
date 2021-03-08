//
//  SecondController.swift
//  UserProfile
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 06/03/21.
//

import UIKit

class SecondController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Default.string(forKey: "statSymbol") == "BB" {
            statusLabel.text = "One"
        }
        if Default.string(forKey: "statSymbol") == "CC" {
            statusLabel.text = "Two"
        }
        
        print(Default.string(forKey: "statSymbol"))
    }
}
