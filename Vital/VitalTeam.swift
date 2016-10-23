//
//  VitalTeam.swift
//  Vital
//
//  Created by Austin Mease on 10/17/16.
//  Copyright © 2016 Austin Mease. All rights reserved.
//

import UIKit


class VitalTeam {
    // MARK: Properties
    
    var name: String
    var photo: UIImage?
    var vitalFellows: [User]
    var vitalLeader: User
    
    // MARK: Init
    
    init?(name: String, photo: UIImage?, vitalFellows: [User], vitalLeaders: User) {
        self.name = name
        self.photo = photo
        self.vitalFellows = vitalFellows
        self.vitalLeader = vitalLeaders
        
        if name.isEmpty {
            return nil
        }
    }
    
    func addVitalTeamFellow(user: User){
        vitalFellows.append(user)
    }
    func addVitalTeamLeader(user: User){
        vitalLeader = user
    }
}
