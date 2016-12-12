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

var ThisUser: User = User(name: "Temp", photo: nil, username: "temp", password: "temp",
                          email: "@temp")!

class FirstViewController: UIViewController, UITextFieldDelegate, FBSDKLoginButtonDelegate {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var Register: UIButton!
    
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var FacebookLogin: UIButton!
    
    
    var fbLoginSuccess = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleTeam()
        
        // Do any additional setup after loading the view, typically from a nib.
        let loginButton = FBSDKLoginButton()
        //loginButton.center = self.view.center
        loginButton.frame = CGRect(x: 16, y: 500, width: view.frame.width - 32, height: 50)
        loginButton.delegate = self
        self.view.addSubview(loginButton)
        
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        if (FBSDKAccessToken.current() != nil && fbLoginSuccess == true)
        {
            performSegue(withIdentifier: "UserVitalTeam", sender: self)
        }
    }
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error != nil {
            print(error)
            return
        }
        fbLoginSuccess = true
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
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
        
    }
    func textFieldDidEndEditing(_ textField: UITextField){
    }
    @IBAction func LoginAction(_ sender: AnyObject) {
        
        ThisUser.email = self.email.text!
        ThisUser.password = self.password.text!
        
        
        let email = self.email.text
        let password = self.password.text
        ThisUser.name = email!
        
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
    
    func loadSampleTeam(){
        
        
        let photo1 = UIImage(named: "keto")!
        let user1 = User(name: "Austin M", photo: photo1, username: "blad", password: "temp",
                         email: "@temp")
        
        let team1 = VitalTeam(name: "Keto2", photo: photo1, vitalFellows: [user1!], vitalLeaders: user1!)
        
        let team2 = VitalTeam(name: "Not Keto2", photo: photo1, vitalFellows: [user1!], vitalLeaders: user1!)
        
        Allteams.append(team1!)
        Allteams.append(team2!)
        
    }
    
   
    
}

