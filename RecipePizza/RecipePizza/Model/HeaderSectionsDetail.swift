//
//  HeaderSectionsDetail.swift
//  RecipePizza
//
//  Created by mac on 3/17/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation

struct HeaderSectionsDetail {
    
    var title: String!
    
    static func fetchSections() -> [HeaderSectionsDetail] {
        
        let firstSetion = HeaderSectionsDetail(title: "Необходимые ингредиенты")
        let secondSection = HeaderSectionsDetail(title: "Направления \nПодготовка")

        return [firstSetion, secondSection]
    }
}
