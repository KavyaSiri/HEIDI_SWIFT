//
//  TapToSelectCell.swift
//  DoctorsFriend
//
//  Created by Goutham Mac Mini on 20/05/20.
//  Copyright © 2020 Doctors Friend. All rights reserved.
//

import UIKit

class TapToSelectCell: UITableViewCell {

    @IBOutlet weak var labelHitDescription: UILabel!
    @IBOutlet weak var labelTapToSelect: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
