//
//  FirstViewController.swift
//  Vital
//
//  Created by Austin Mease on 9/24/16.
//  Copyright © 2016 Austin Mease. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit


class FirstViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var Register: UIButton!
    
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var FacebookLogin: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if ((FBSDKAccessToken.current()) != nil) {
            performSegue(withIdentifier: "UserVitalTeam", sender: self)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
        let loginButton = FBSDKLoginButton()
        loginButton.center = self.view.center
        self.view.addSubview(loginButton)
        
        if ((FBSDKAccessToken.current()) != nil) {
            performSegue(withIdentifier: "UserVitalTeam", sender: self)
        }
        
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func GetEmailText(_ sender: AnyObject){
    }
    @IBAction func GetPasswordText(_ sender: AnyObject) {
    }
    @IBAction func InitiateFacebookLogin(_ sender: AnyObject) {
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        // Hidethe keyboard.
        textField.resignFirstResponder()
        return true
        
    }
    func textFieldDidEndEditing(_ textField: UITextField){
    }
    @IBAction func LoginAction(_ sender: AnyObject) {
        
        let email = self.email.text
        let password = self.password.text
        
        if(!(email?.contains("@"))!){
            let alert = UIAlertView(title: "Invalid", message: "Invalid Email Format", delegate: self, cancelButtonTitle: "OK")
            alert.show()
        
        }else if (false){ // password UAuth
            let alert = UIAlertView(title: "Invalid", message: "Invalid Username or Password", delegate: self, cancelButtonTitle: "OK")
            alert.show()
        
        }else{
            // go to VitalTeams screen
            if ((email) != nil) {

                performSegue(withIdentifier: "UserVitalTeam", sender: self)

            }
            
        }
    }
    
   
    
}

