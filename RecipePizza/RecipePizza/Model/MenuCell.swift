//
//  MenuCell.swift
//  RecipePizza
//
//  Created by mac on 3/27/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

enum MenuCell: Int, CustomStringConvertible {
    
    case Home
    case AboutMe
    
    var description: String {
        switch self {
        case .Home:
            return "Домой"
        case .AboutMe:
            return "Об авторе"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Home:
            return #imageLiteral(resourceName: "home")
        case .AboutMe:
            return #imageLiteral(resourceName: "info")
        }
    }
}
