//
//  EventTableViewCell.swift
//  ManagementTableViewTry
//
//  Created by miceli on 5/14/17.
//  Copyright © 2017 Dau Khac Bac. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    //
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var descrip: UILabel!
    //

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
