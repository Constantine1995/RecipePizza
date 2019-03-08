//
//  PopularRecipePizza.swift
//  RecipePizza
//
//  Created by mac on 3/8/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

struct PopularRecipePizza {
    
    var image: UIImage
    var title: String
    var description: String
    
    static func fetchRecipe() -> [PopularRecipePizza] {
        let firstItem = PopularRecipePizza(image: UIImage(named: "pizza_fresca")!,
                                    title: "-",
                                    description: "-")
        let secondItem = PopularRecipePizza(image: UIImage(named: "pizza_fresca")!,
                                     title: "-",
                                     description: "-")

        return [firstItem, secondItem]
    }
}
