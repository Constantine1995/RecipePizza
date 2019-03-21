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
    var ingredients = [String]()
    var amountOfIngredients: Int
    var cooking = [String]()
    
    static func fetchRecipe() -> [PopularRecipePizza] {
        let pepperoni = PopularRecipePizza(image: UIImage(named: "pepperoni-popular")!,
                                           imageClock: UIImage(named: "alarm-clock")!,
                                           title: "Пепперони",
                                           description: "Пицца с пепперони , сыром «Моцарелла», а также орегано.",
                                           timeForPreparing: "60 минут",
                                           ingredients:
            
            ["1 шт - тесто для пиццы",
             "250 г - сыр моцарелла",
             "2 с.л. - оливковое масло",
             "200 г - сырокопченая колбаса",
             "1 шт - перец чили",
             "1 банка - помидоры в собственном соку",
             "1 ч.л. - орегано",
             "1 ч.л. -  сушеный базилик",
             "1 зубчик - чеснок",
             "1 ч.л. - сахар",
             "соль по вкусу",
             "перец по вкусу"], amountOfIngredients: 12, cooking:
            ["Подготовить ингредиенты. Замесить тесто. Дрожжи смешать с водой комнатной температуры и оставить на 20 минут. Затем добавить муку, соль и масло оливковое, накрыть влажным полотенцем и оставить на 45 минут.",
             "Для соуса томаты пробить блендером или протереть через сито, добавить молотый чеснок, масло, базилик, тимьян, паприку и соль по вкусу.",
             "Натереть сыр.",
             "Тонко нарезать пепперони.",
             "Раскатать из теста основу для пиццы.",
             "Смазать поверхность томатным соусом. Посыпать тертым сыром и выложить кружочки пепперони. Выпекать пиццу в духовом шкафу в течение 8-10 минут при 250-270 градусов."])
        
        let margarita = PopularRecipePizza(image: UIImage(named: "margarita_popular")!,
                                           imageClock: UIImage(named: "alarm-clock")!,
                                           title: "Маргарита",
                                           description: "Пицца с сыром «Моцарелла», орегано и свежими помидорами. ",
                                           timeForPreparing: "50 минут",
                                           ingredients:
            
            ["1 ч.л. - сухие дрожжи",
             "1,5-2 - стакана мука",
             "2 с.л. - оливковое масло",
             "3/4 стакана - теплая вода (36°c)",
             "1/2 ч.л. - соль",
             "2-3 ст.л. - оливковое масло",
             "4-5 шт - помидоры",
             "2-3 зубчик - чеснок",
             "1 зубчик чеснок",
             "130-150 г - сыр моцарелла",
             "зелень базилика",
             "перец по вкусу"], amountOfIngredients: 12, cooking: [""])
        
        let luigi = PopularRecipePizza(image: UIImage(named: "luigi-popular")!, imageClock: UIImage(named: "alarm-clock")!,
                                       title: "Луиджи",
                                       description: "Пицца с балыком , сочными баварскими сосисками, свежими помидорами , сыром «Моцарелла» и зеленью.",
                                       timeForPreparing: "45 минут",
                                       ingredients:
            ["400 г - тесто для пиццы",
             "100 г - балык",
             "2 с.л. - оливковое масло",
             "200 г - баварские сосиски",
             "2-3 шт - помидоры",
             "1 ч.л. - сахар",
             "130-150 г - сыр моцарелла",
             "зелень базилика",
             "соль по вкусу",
             "перец по вкусу"], amountOfIngredients: 10, cooking: [""])
        
        let alcapone = PopularRecipePizza(image: UIImage(named: "al-capone-popular")!,
                                          imageClock: UIImage(named: "alarm-clock")!,
                                          title: "Аль Капоне",
                                          description: "Пицца с балыком, сыром «Моцарелла», свежими грибами, сочными помидорами и свежей зеленью.",
                                          timeForPreparing: "65 минут",
                                          ingredients:
            ["1 шт - тесто для пиццы",
             "100 г - балык",
             "250 г - сыр моцарелла",
             "200 г - грибы",
             "2-3 шт - помидоры",
             "1 с.л. - масло ростительное",
             "1 ч.л. - базилик",
             "1 ч.л. - сахар",
             "соль по вкусу",
             "перец по вкусу"], amountOfIngredients: 10, cooking: [""])
        
        let laGalina = PopularRecipePizza(image: UIImage(named: "la-gallina")!,
                                          imageClock: UIImage(named: "alarm-clock")!,
                                          title: "Ля Галлина",
                                          description: "Пицца с запеченой курицей, свежими грибами, сыром «Моцарелла» , и сочными помидорами.",
                                          timeForPreparing: "60 минут",
                                          ingredients:
            ["1 шт - тесто для пиццы",
             "150 г - сыр моцарелла",
             "2 с.л. - оливковое масло",
             "200 г - грибы",
             "2-3 шт - помидоры",
             "1 шт -  запеченная курица",
             "1 ч.л. сахар",
             "соль по вкусу",
             "перец по вкусу"], amountOfIngredients: 9, cooking: [""])
        
        return [pepperoni, margarita, luigi, alcapone, laGalina]
    }
}
