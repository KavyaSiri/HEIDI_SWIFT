//
//  VisitsCell.swift
//  DoctorsFriend
//
//  Created by Goutham Mac Mini on 21/05/20.
//  Copyright © 2020 Doctors Friend. All rights reserved.
//

import UIKit

class VisitsCell: UITableViewCell {

    @IBOutlet weak var stepperVisits: UIStepper!
    @IBOutlet weak var labelNOVisits: UILabel!
    @IBOutlet weak var labelVisits: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
