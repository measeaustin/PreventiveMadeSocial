//
//  VitalTableViewController.swift
//  Vital
//
//  Created by Austin Mease on 10/23/16.
//  Copyright © 2016 Austin Mease. All rights reserved.
//

import UIKit

var Allteams = [VitalTeam]()


class VitalTableViewController: UITableViewController {

    // PROPERTIES
    var UserTeams = [VitalTeam]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableView.register(VitalTableViewCell.self, forCellReuseIdentifier: "VitalCell")

        // Load the sample data.
        loadSampleTeam()
        // Filter AllTeam to UserTeams
        
        for team in Allteams{
            for user in team.vitalFellows { //TODO: Use .contains
                if (user.username == ThisUser.username){
                    UserTeams.append(team)
               }
            }
        }
        
        //UserTeams.append(contentsOf: Allteams)
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return UserTeams.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cell = tableView.dequeueReusableCell(withIdentifier: "VitalCell", for: indexPath) //as! VitalTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let team = UserTeams[indexPath.row]
        /*
        // Configure the cell TODO: Allow custom cell
        cell.TeamName?.text = "test"
        cell.TeamPicture?.image = team.photo
        cell.TeamLeader?.text = team.vitalLeader.name
         */
        
        cell.textLabel?.text = team.name
        cell.detailTextLabel?.text = "Leader: " + team.vitalLeader.name
        cell.imageView?.image = team.photo
        
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func loadSampleTeam(){
        
        let photo1 = UIImage(named: "keto")!
        let user1 = User(name: "Austin M", photo: photo1, username: "temp", password: "temp",
                         email: "@temp")
        
        let team1 = VitalTeam(name: "Keto3", photo: photo1, vitalFellows: [user1!], vitalLeaders: user1!)
        
        let team2 = VitalTeam(name: "Not Keto3", photo: photo1, vitalFellows: [user1!], vitalLeaders: user1!)
        
        Allteams.append(team1!)
        Allteams.append(team2!)
        
    }

}
