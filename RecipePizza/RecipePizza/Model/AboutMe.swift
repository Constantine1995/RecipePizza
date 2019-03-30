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
    let information = AboutMe(IconImage: #imageLiteral(resourceName: "ceb94d09359d6c21684cba5929eebd12"), nameLabel: "Лихачёв К.С.")
    return information
}
}
