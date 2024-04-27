//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Ömer on 20.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var birthdayText: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let nameYeni = UserDefaults.standard.object(forKey: "name")
        let birthYeni = UserDefaults.standard.object(forKey: "birth")
        
        
        if let names = nameYeni as? String{
            nameLabel.text = names
        }
        
        if let births = birthYeni as? String{
            birthdayLabel.text = births
        }
        
    }


    @IBAction func save(_ sender: Any) {
        
        UserDefaults.standard.set(nameText.text!, forKey: "name")
        UserDefaults.standard.set(birthdayText.text!, forKey: "birth")
        
        nameLabel.text = "Name : \(nameText.text!)"
        birthdayLabel.text = "Birthday : \(birthdayText.text!)"
        
        
    }
    
    
    
}

