//
//  HeaderCell.swift
//  RecipePizza
//
//  Created by mac on 3/13/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class HeaderCell: UITableViewCell {

    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    
    @IBOutlet weak var timeForPrepare: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
