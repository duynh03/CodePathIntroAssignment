//
//  ViewController.swift
//  project0
//
//  Created by Daniel Huynh on 1/9/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var SchoolNameTextField: UITextField!
    
    @IBOutlet weak var YearSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var NumberOfPetsLabel: UILabel!
    @IBOutlet weak var MorePetsStepper: UIStepper!
    @IBOutlet weak var MorePetsSwitch: UISwitch!
    
    @IBOutlet weak var IntroduceButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

    }
    
    @IBAction func StepperChanged(_ sender: UIStepper) {
        NumberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func IntroduceButtonTapped(_ sender: UIButton) {
        let year = YearSegmentControl.titleForSegment(at: YearSegmentControl.selectedSegmentIndex)
        
        let introduction = "My name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend \(SchoolNameTextField.text!). I am currently in my \(year!) year and I own \(NumberOfPetsLabel.text!) dogs. It is \(MorePetsSwitch.isOn) that I want more pets"
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you", style: .default, handler: nil)
        
        alertController.addAction(action)
        present(alertController,animated: true,completion: nil)
    }
}

 
