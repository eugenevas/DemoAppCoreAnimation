//
//  ViewController.swift
//  DemoAppCoreAnimation
//
//  Created by Евгений Васильев on 09.03.2020.
//  Copyright © 2020 Eugene Vasilyev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var buttonWithShadows: UIButton!
    @IBOutlet var correctPassword: UILabel!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.setGradientBackground(colorOne: Colors.red, colorTwo: Colors.orange)
        
        // testButton
        let button = UIButton(frame: CGRect(x: 107, y: 700, width: 200, height: 50))
        button.backgroundColor = UIColor(red: 0/255, green: 145/255, blue: 255/255, alpha: 1)
        button.setTitle("Test button", for: .normal)
        button.titleLabel?.font = UIFont(name: "Apple SD Gothic Neo", size: 16)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.layer.cornerRadius = 8
        self.view.addSubview(button)
        
        // submitButton
        submitButton.layer.cornerRadius = 8
        submitButton.layer.masksToBounds = true
        
        // green button withShadows
        buttonWithShadows.applyShadows()
        buttonWithShadows.applyDesign()
        
        // passworField
        passwordField.delegate = self
        
    }
    
    // MARK: -Buttons
    
    // submit button
    @IBAction func submitedButton(_ sender: UIButton) {
        
        if passwordField.text == "pass"  {
            print("Access granted")
            performSegue(withIdentifier: "showAccount", sender: self)
        } else {
            passwordField.shakeTextfield()
        }
    }
    
    // test button
       @objc func buttonAction() {
           print("Button tapped")
       }
    
    // button
    @IBAction func correctPassButton(_ sender: UIButton) {
        correctPassword.text = "pass"
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        passwordField.resignFirstResponder()
    }
    
    // MARK: -Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destinationViewController = segue.destination as? AccountViewController else { return }
        destinationViewController.login = passwordField.text
    }
    
}

// MARK: -Extension for passwordField
extension UIViewController: UITextFieldDelegate {
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
}

