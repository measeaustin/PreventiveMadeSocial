//
//  User.swift
//  Vital
//
//  Created by Austin Mease on 10/17/16.
//  Copyright © 2016 Austin Mease. All rights reserved.
//

import UIKit


class User {
    // MARK: Properties
    
    var name: String
    var photo: UIImage?
    var username: String
    var password: String
    var email: String
    
    // MARK: Init

    init?(name: String, photo: UIImage?, username: String, password: String,
     email: String) {
        self.name = name
        self.photo = photo
        self.username = username
        self.password = password
        self.email = email

        if name.isEmpty {
            return nil
        }
    }
    
}
