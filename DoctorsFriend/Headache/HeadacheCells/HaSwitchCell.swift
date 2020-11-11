//
//  HaSwitchCell.swift
//  DoctorsFriend
//
//  Created by Goutham Mac Mini on 20/05/20.
//  Copyright © 2020 Doctors Friend. All rights reserved.
//

import UIKit

class HaSwitchCell: UITableViewCell {

    @IBOutlet weak var lableHeadache: UILabel!
    @IBOutlet weak var buttonPainFree: UIButton!
    @IBOutlet weak var buttonMild: UIButton!
    @IBOutlet weak var buttonModerate: UIButton!
    @IBOutlet weak var buttonSevere: UIButton!
    @IBOutlet weak var labelSwitchLabel: UILabel!
    @IBOutlet weak var buttonSwitch: UISwitch!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
