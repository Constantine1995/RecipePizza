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
    var imageClock: UIImage
    var title: String
    var description: String
    var timeForPreparing: String
    
    static func fetchRecipe() -> [PopularRecipePizza] {
        let pepperoni = PopularRecipePizza(image: UIImage(named: "pepperoni-popular")!,
                                           imageClock: UIImage(named: "alarm-clock")!,
                                           title: "Пепперони",
                                           description: "Пицца с пепперони , сыром «Моцарелла», а также орегано.",
                                           timeForPreparing: "15 минут")
        
        let margarita = PopularRecipePizza(image: UIImage(named: "margarita_popular")!,
                                           imageClock: UIImage(named: "alarm-clock")!,
                                           title: "Маргарита",
                                           description: "Пицца с сыром «Моцарелла», орегано и свежими помидорами. ",
                                           timeForPreparing: "20 минут")
        
        let luigi = PopularRecipePizza(image: UIImage(named: "luigi-popular")!, imageClock: UIImage(named: "alarm-clock")!,
                                       title: "Луиджи",
                                       description: "Пицца с балыком , сочными баварскими сосисками, свежими помидорами , сыром «Моцарелла» и зеленью.",
                                       timeForPreparing: "25 минут")
        
        let alcapone = PopularRecipePizza(image: UIImage(named: "al-capone-popular")!,
                                          imageClock: UIImage(named: "alarm-clock")!,
                                          title: "Аль Капоне",
                                          description: "Пицца с балыком, сыром «Моцарелла», свежими грибами, сочными помидорами и свежей зеленью.",
                                          timeForPreparing: "15 минут")
        
        let laGalina = PopularRecipePizza(image: UIImage(named: "la-gallina")!,
                                          imageClock: UIImage(named: "alarm-clock")!,
                                          title: "Ля Галлина",
                                          description: "Пицца с запеченой курицей, свежими грибами, сыром «Моцарелла» , и сочными помидорами.",
                                          timeForPreparing: "30 минут")
        
        return [pepperoni, margarita, luigi, alcapone, laGalina]
    }
}
