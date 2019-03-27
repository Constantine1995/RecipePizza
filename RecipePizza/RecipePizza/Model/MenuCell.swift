//
//  MenuCell.swift
//  RecipePizza
//
//  Created by mac on 3/27/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

struct MenuCell {
    
    var IconImage: UIImage!
    var nameLabel: String!
    
    static func fetchMenu() -> [MenuCell] {
        let home = MenuCell(IconImage: #imageLiteral(resourceName: "home"), nameLabel: "Домой")
        let info = MenuCell(IconImage: #imageLiteral(resourceName: "info"), nameLabel: "Об авторе")
        return [home, info]
    }
}
