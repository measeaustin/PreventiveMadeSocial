//
//  RegisterViewController.swift
//  Vital
//
//  Created by Austin Mease on 10/16/16.
//  Copyright © 2016 Austin Mease. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var UsernameTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var ConfirmPasswordTextField: UITextField!
    
    
    @IBOutlet weak var SubmitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SubmitClicked(_ sender: AnyObject) {
        
        let first = self.FirstNameTextField.text
        let last = self.LastNameTextField.text
        let email = self.EmailTextField.text
        let username = self.UsernameTextField.text
        let password = self.PasswordTextField.text
        let confirm = ConfirmPasswordTextField.text
        
        
        if(!(email?.contains("@"))!){
            let alert = UIAlertView(title: "Invalid", message: "Invalid Email Format", delegate: self, cancelButtonTitle: "OK")
            alert.show()
        }else if(password?.compare(confirm!) == nil){
            
            
        }else if(false){
            // check if it already exists
        } else {
            // go to Join Group Scene
            if ((email) != nil) {
                
                let thisUser = User(name: first! + last!, photo: nil, username: username!, password: password!, email: email!)
                
                performSegue(withIdentifier: "JoinVitalTeam", sender: self)
                
            }
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
