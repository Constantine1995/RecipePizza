//
//  AllPizzaCollectionViewCell.swift
//  RecipePizza
//
//  Created by mac on 3/24/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class AllPizzaCollectionViewCell: UICollectionViewCell {
    
    var pizza: AllPizza? {
        didSet {
            guard let pizzaImage = pizza?.pizzaImage else { return }
            guard let clockImage = pizza?.imageClock else { return }
            guard let nameLabel = pizza?.nameLabel else { return }
            guard let timeLabel = pizza?.timeForPreparing else { return }
            
            pizzaImageView.image = pizzaImage
            clockImageView.image = clockImage
            self.timeLabel.text = timeLabel
            self.nameLabel.text = nameLabel
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    let pizzaImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        return image
    }()
    
    let clockImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont(name: "Helvetica", size: 23)
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        return label
    }()
    
    
    let timeLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont(name: "Helvetica Neue", size: 17)
        label.textColor = .lightGray
        return label
    }()
    
    func setupView() {
        
        addSubview(pizzaImageView)
        addSubview(clockImageView)
        addSubview(nameLabel)
        addSubview(timeLabel)
        
        pizzaImageView.setAnchor(top: topAnchor, left: leftAnchor, right: rightAnchor, bottom: nil, paddingTop: 10, paddingLeft: 10, paddingRight: -10, paddingBottom: 0, height: 130)
        
        nameLabel.setAnchor(top: pizzaImageView.bottomAnchor, left: leftAnchor, right: rightAnchor, bottom: nil, paddingTop: 0, paddingLeft: 10, paddingRight: -10, paddingBottom: 0)
        
        clockImageView.setAnchor(top: nameLabel.bottomAnchor, left: leftAnchor, right: nil, bottom: nil, paddingTop: 30, paddingLeft: 20, paddingRight: 0, paddingBottom: 0, width: 20, height: 20)
        
        timeLabel.setAnchor(top: nil, left: nil, right: rightAnchor, bottom: nil, paddingTop: 0, paddingLeft: 0, paddingRight: -20, paddingBottom: 0)
        
        timeLabel.centerYAnchor.constraint(equalTo: clockImageView.centerYAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
