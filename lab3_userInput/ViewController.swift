//
//  ViewController.swift
//  lab3_userInput
//
//  Created by user252704 on 5/24/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var countryName: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var displayDetails: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

        
    @IBAction func submitInfo(_ sender: Any) {
        if firstName.text?.isEmpty == true || lastName.text?.isEmpty == true   || countryName.text?.isEmpty == true || age.text?.isEmpty == true {
            labelMessage.text = "Complete the missing info! \n"
        } else {
            labelMessage.text = "Successfully submitted!"
        }
        labelMessage.isHidden = false
    }
    
    
    @IBAction func addInfo(_ sender: Any) {
        displayDetails.text = " Full Name : \(firstName.text ?? "") \(lastName.text ?? "") \n Country : \(countryName.text ?? "") \n Age: \(age.text ?? "")"
        labelMessage.isHidden = true
    }
    
    @IBAction func clearInfo(_ sender: Any) {
        displayDetails.text = ""
        firstName.text = ""
        lastName.text = ""
        countryName.text = ""
        age.text = ""
        labelMessage.isHidden = true
        
    }
}
