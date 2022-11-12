//
//  RedeSocialPostTableViewCell.swift
//  Prototype
//
//  Created by Student on 10/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class RedeSocialPostTableViewCell: UITableViewCell {

    
    @IBOutlet weak var friendPhotoImageView: UIImageView!
    
    @IBOutlet weak var friendUserNameLabel: UILabel!
    
    
    @IBOutlet weak var friendPostLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
