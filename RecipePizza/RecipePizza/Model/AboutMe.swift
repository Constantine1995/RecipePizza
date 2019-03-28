//
//  AboutMe.swift
//  RecipePizza
//
//  Created by mac on 3/28/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

struct AboutMe {
var IconImage: UIImage!
var nameLabel: String!

static func fetchAboutMeInformation() -> AboutMe {
    let information = AboutMe(IconImage: #imageLiteral(resourceName: "avatar"), nameLabel: "Лихачов К.С.")
    return information
}
}
