//
//  ViewController.swift
//  CodePath iOS102 Prework
//
//  Created by Anthony on 12/25/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var academicYearSegmentControl: UISegmentedControl!
    @IBOutlet weak var numberOfPets: UILabel!
    @IBOutlet weak var petsStepper: UIStepper!
    @IBOutlet weak var wantMorePetsSwitch: UISwitch!
    @IBAction func petsStepperEvent(_ sender: UIStepper) {
        
        numberOfPets.text = "\(Int(sender.value))"
    }
    @IBAction func randomizeColorButton(_ sender: UIButton) {
        
    }
    
    @IBAction func introduceSelfButton(_ sender: UIButton) {
        
        // assigns the text on the current selected segment to year
        let year = academicYearSegmentControl.titleForSegment(at: academicYearSegmentControl.selectedSegmentIndex)
        
        // generates the introduction text based on inputs
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolTextField.text!). I am currently in my \(year!) year and I own \(numberOfPets.text!) pets. It is \(wantMorePetsSwitch.isOn) that I want more pets."
        
        // creates the alert.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // allows alert box dismissal
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated:true, completion: nil)
    }
    
    @IBAction func tapGestureRecognizer(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
