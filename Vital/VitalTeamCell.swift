//
//  VitalTeamCell.swift
//  Vital
//
//  Created by Austin Mease on 10/17/16.
//  Copyright © 2016 Austin Mease. All rights reserved.
//

import UIKit

class VitalTeamCell: UITableViewCell {

    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var TeamLeader: UILabel!
    @IBOutlet weak var Picture: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
