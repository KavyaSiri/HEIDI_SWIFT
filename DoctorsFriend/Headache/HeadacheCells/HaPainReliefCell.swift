//
//  HaPainReliefCell.swift
//  DoctorsFriend
//
//  Created by Goutham Mac Mini on 20/05/20.
//  Copyright © 2020 Doctors Friend. All rights reserved.
//

import UIKit

class HaPainReliefCell: UITableViewCell {

    @IBOutlet weak var labelPainrRelief: UILabel!
    @IBOutlet weak var buttonTriptane: UIButton!
    @IBOutlet weak var buttonCodeine: UIButton!
    @IBOutlet weak var buttonSimple: UIButton!
    @IBOutlet weak var buttonOthers: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
