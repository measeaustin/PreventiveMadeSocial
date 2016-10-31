//
//  VitalTableViewCell.swift
//  Vital
//
//  Created by Austin Mease on 10/27/16.
//  Copyright © 2016 Austin Mease. All rights reserved.
//

import UIKit

class VitalTableViewCell: UITableViewCell {

    @IBOutlet weak var TeamPicture: UIImageView!
    
    @IBOutlet weak var TeamLeader: UILabel!
    @IBOutlet weak var TeamName: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
  //      TeamName.text = ""
 //       TeamLeader.text = ""
  //      TeamPicture.image = UIImage(named: "keto")!
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
