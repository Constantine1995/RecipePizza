//
//  IngredientsTableViewCell.swift
//  RecipePizza
//
//  Created by mac on 3/19/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import BEMCheckBox

class IngredientsTableViewCell: UITableViewCell {
    
    var checkMark: BEMCheckBox = {
        let checkbox = BEMCheckBox()
        checkbox.onAnimationType = .oneStroke
        checkbox.offAnimationType = .fill
        checkbox.onCheckColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        checkbox.onFillColor = #colorLiteral(red: 0.01521346811, green: 0.473118484, blue: 0.9837345481, alpha: 1)
        return checkbox
    }()
    
    let ingredientContent: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        return label
    }()
    
    let descriptionContent: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(checkMark)
        addSubview(ingredientContent)
        addSubview(descriptionContent)
  
        checkMark.setAnchor(top: topAnchor, left: leftAnchor, right: nil, bottom: bottomAnchor, paddingTop: 15, paddingLeft: 15, paddingRight: 0, paddingBottom: -15, width: 30, height: 30)
        
        ingredientContent.setAnchor(top: topAnchor, left: checkMark.rightAnchor, right: rightAnchor, bottom: bottomAnchor, paddingTop: 0, paddingLeft: 20, paddingRight: -15, paddingBottom: 0, width: frame.size.width)
        ingredientContent.centerYAnchor.constraint(equalTo: centerYAnchor)
        
        descriptionContent.setAnchor(top: topAnchor, left: checkMark.rightAnchor, right: rightAnchor, bottom: bottomAnchor, paddingTop: 0, paddingLeft: 20, paddingRight: -10, paddingBottom: 0, width: frame.size.width)
        descriptionContent.centerYAnchor.constraint(equalTo: centerYAnchor)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
