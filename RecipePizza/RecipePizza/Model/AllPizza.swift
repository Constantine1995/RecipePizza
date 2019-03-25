//
//  AllPizza.swift
//  RecipePizza
//
//  Created by mac on 3/24/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

struct AllPizza {
    
    var pizzaImage: UIImage!
    var imageClock: UIImage!
    var nameLabel: String!
    var timeForPreparing: String!
    
    static func fetchAllPizza() -> [AllPizza] {
        
        let pepperoni = AllPizza(pizzaImage: UIImage(named: "Pepperoni"),
                                 imageClock: UIImage(named: "alarm-clock"), nameLabel: "Пепперони",
                                 timeForPreparing: "8-10 минут")
        let margarita = AllPizza(pizzaImage: UIImage(named: "Margarita"),
                                 imageClock: UIImage(named: "alarm-clock")!, nameLabel: "Маргарита", timeForPreparing: "10-12 минут")
        let luigi = AllPizza(pizzaImage: UIImage(named: "Luigi"),
                             imageClock: UIImage(named: "alarm-clock")!, nameLabel: "Луиджи", timeForPreparing: "до 20 минут")
        let alcapone = AllPizza(pizzaImage: UIImage(named: "alcapone"),
                                imageClock: UIImage(named: "alarm-clock")!, nameLabel: "Аль Капоне",
                                timeForPreparing: "15 минут")
        let laGalina = AllPizza(pizzaImage: UIImage(named: "LaGallina"),
                                imageClock: UIImage(named: "alarm-clock")!, nameLabel: "Ля Галлина",
                                timeForPreparing: "10-20 минут")
        
        return [pepperoni, margarita, luigi, alcapone, laGalina]
    }
}
