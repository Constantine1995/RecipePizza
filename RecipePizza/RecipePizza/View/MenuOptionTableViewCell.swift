//
//  MenuOptionTableViewCell.swift
//  RecipePizza
//
//  Created by mac on 3/26/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class MenuOptionTableViewCell: UITableViewCell {
    
    let iconImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        return image
    }()
    
    let nameMenuItem: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 23)
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(iconImage)
        addSubview(nameMenuItem)
        
        setupConstntaints()
    }
    
    func setupConstntaints() {
        iconImage.setAnchor(top: topAnchor, left: leftAnchor, right: nil, bottom: bottomAnchor, paddingTop: 15, paddingLeft: 15, paddingRight: 0, paddingBottom: -15, width: 30, height: 30)
        
        nameMenuItem.setAnchor(top: topAnchor, left: iconImage.rightAnchor, right: rightAnchor, bottom: bottomAnchor, paddingTop: 15, paddingLeft: 15, paddingRight: 0, paddingBottom: -15)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
