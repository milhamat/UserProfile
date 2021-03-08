//
//  ViewController.swift
//  UserProfile
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 06/03/21.
//

import UIKit

let Default = UserDefaults.standard
var stat = Default.string(forKey: "statSymbol")

class MainController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }

  
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let buttonTitle = sender.currentTitle!
        if buttonTitle == "One" {
            stat = "BB"
            Default.set(stat, forKey: "statSymbol")
        }
        if buttonTitle == "Two" {
            stat = "CC"
            Default.set(stat, forKey: "statSymbol")
        }
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Second") as! SecondController
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func checkButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Second") as! SecondController
        self.present(vc, animated: true, completion: nil)
    }
}

