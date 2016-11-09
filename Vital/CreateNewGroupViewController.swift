//
//  CreateNewGroupViewController.swift
//  Vital
//
//  Created by Austin Mease on 10/31/16.
//  Copyright © 2016 Austin Mease. All rights reserved.
//

import UIKit

class CreateNewGroupViewController: UIViewController {

    @IBOutlet weak var NewTeam: UITextField!
    @IBOutlet weak var SubmitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func CreateAction(_ sender: AnyObject) {
        let photo1 = UIImage(named: "keto")!
        let newTeam2 = VitalTeam(name: NewTeam.text!, photo: photo1, vitalFellows: [ThisUser], vitalLeaders: ThisUser)
        Allteams.append(newTeam2!)
        UserTeams.append(newTeam2!)
        performSegue(withIdentifier: "AddedNewTeam", sender: self)
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
