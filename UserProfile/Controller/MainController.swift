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
   
//    var pass: String = "AA"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        Default.set(pass, forKey: "Pass")
    }

  
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let buttonTitle = sender.currentTitle!
        if buttonTitle == "One" {
//            pass = "BB"
            stat = "BB"
            Default.set(stat, forKey: "statSymbol")
//            Default.set(pass, forKey: "Pass")
        }
        if buttonTitle == "Two" {
//            pass = "CC"
            stat = "CC"
            Default.set(stat, forKey: "statSymbol")
//            Default.set(pass, forKey: "Pass")
        }
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Second") as! SecondController
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func checkButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Second") as! SecondController
        self.present(vc, animated: true, completion: nil)
    }
}

