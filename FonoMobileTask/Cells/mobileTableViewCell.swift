
//
//  mobileTableViewCell.swift
//  FonoMobileTask
//
//  Created by Apple on 6/4/20.
//  Copyright © 2020 yourParts. All rights reserved.
//

import UIKit

class mobileTableViewCell: UITableViewCell {

    @IBOutlet weak var mobileColor: UILabel!
    @IBOutlet weak var mobileName: UILabel!
    @IBOutlet weak var mobileStatus: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
