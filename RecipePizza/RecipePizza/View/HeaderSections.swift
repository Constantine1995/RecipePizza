//
//  HeaderCell.swift
//  RecipePizza
//
//  Created by mac on 3/13/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class HeaderSections: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var headerMiniText: UILabel!
    @IBOutlet weak var amountOfIngredients: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
