//
//  JoinGroupViewController.swift
//  Vital
//
//  Created by Austin Mease on 10/16/16.
//  Copyright © 2016 Austin Mease. All rights reserved.
//

import UIKit

class JoinGroupViewController: UIViewController {

    
    @IBOutlet weak var JoinTeamTextField: UITextField!
    @IBOutlet weak var JoinButton: UIButton!
    @IBOutlet weak var JoinKetoButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        
        //for team in Allteams {
          //  if (team.name == searchBar.text){
            //    team.vitalFellows.append(ThisUser)
            //}
        //}
    //}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }*/
    
    
    @IBAction func KetoPressed(_ sender: AnyObject) {
        let photo1 = UIImage(named: "keto")!
        let user1 = User(name: "Austin M", photo: photo1, username: "blad", password: "temp",
                         email: "@temp")
        
        let team1 = VitalTeam(name: "Keto2", photo: photo1, vitalFellows: [ThisUser], vitalLeaders: user1!)
        
        UserTeams.append(team1!)
    }
 
    @IBAction func JoinClicked(_ sender: AnyObject) {
        let s = JoinTeamTextField.text
        for team in Allteams {
            if (team.name == JoinTeamTextField.text){
                UserTeams.append(team)
                team.vitalFellows.append(ThisUser)
            }
        }
        performSegue(withIdentifier: "JoinIdentifier", sender: self)
    }

}
